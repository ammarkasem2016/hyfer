import angular from 'angular';

import timelineModule from './timeline.module';
import timelineComponent from './timeline.component';
import backendService from '../services/backendService';

routing.$inject = ['$stateProvider'];

function routing($stateProvider) {

    $stateProvider
        .state('timeline', {
            url: '/timeline',
            component: timelineComponent,
            resolve: {
                timeline: timelineResolver
            }
        });
}

timelineResolver.$inject = [backendService];

function timelineResolver(backendService) {
    return backendService.getTimeline();
}

angular.module(timelineModule)
    .config(routing);