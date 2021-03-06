import angular from 'angular'
import modulesModule from './modules.module'

import '../footer/footer.component'
import './modules-header.component'
import './module-list.component'
import './modules-buttons.component'

import backendService from '../services/backendService'
import toastService from '../services/toastService'
import addAndUpdateModuleController from '../modals/modules/addAndUpdateModuleModalCtrl'
import template from './modules.component.html'
import addModuleTemplate from '../modals/modules/addModuleModal.html'

class ModulesController {
  static get $inject() {
    return ['$state', '$mdDialog', '$rootScope', backendService, toastService]
  }

  constructor($state, $mdDialog, $rootScope, backendService, toastService) {
    this.backendService = backendService
    this.$mdDialog = $mdDialog
    this.$rootScope = $rootScope
    this.toastService = toastService
    this.$state = $state
    this.isDirty = false
    this.weekWidth = 0
    this.maxDuration = 1
    window.onresize = () => this.computeWeekWidth()
  }

  $postLink() {
    setTimeout(() => {
      this.computeWeekWidth()
      this.$rootScope.$digest()
    })
  }

  $onInit() {
    document.getElementById('content').scrollTop = 0
    const durations = this.modules.map(module => module.default_duration)
    this.maxDuration = Math.max(...durations)
  }

  computeWeekWidth() {
    const modulesContainerElem = document.querySelector('#modulesContainer')
    this.weekWidth = modulesContainerElem.getBoundingClientRect().width / this.maxDuration
  }

  save() {
    this.backendService.saveModules(this.modules)
      .then(modules => {
        this.isDirty = false
        this.modules = modules
        this.toastService.displayToast(true, 'Changes have been saved')
      })
  }

  onChanged(modules) {
    this.modules = modules
    this.isDirty = true
  }

  undoChanges() {
    this.$state.reload()
    this.isDirty = false
    setTimeout(() => {
      this.toastService.displayToast(true, 'Changes have been rolled back')
    }, 10)
  }

  addModule(ev) {
    this.$mdDialog.show({
      locals: {
        selectedModule: null
      },
      controller: addAndUpdateModuleController,
      controllerAs: '$ctrl',
      template: addModuleTemplate,
      targetEvent: ev,
      clickOutsideToClose: true
    }).then(module => {
      this.modules.push(module)
      this.toastService.displayToast(true, `${module.module_name} has been added`)
      this.isDirty = true
    }).catch(err => console.log(err))
  }
}

const componentName = 'hyfModules'

angular.module(modulesModule)
  .component(componentName, {
    template,
    controller: ModulesController,
    bindings: {
      modules: '<'
    }
  })

export default componentName
