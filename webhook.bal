import ballerinax/trigger.github;
import ballerina/http;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:PullRequestService on webhookListener {
  
    remote function onOpened(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onClosed(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onReopened(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onAssigned(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onUnassigned(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onReviewRequested(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onReviewRequestRemoved(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onLabeled(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onUnlabeled(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onEdited(github:PullRequestEvent payload ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}