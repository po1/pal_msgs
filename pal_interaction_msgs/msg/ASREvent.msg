# ASR result messages used by RosRecognizerServer
# This message are published in the ASR event topic.
# The kind of events that are published are the following ones:
## Event types to be published.
uint8 EVENT_UNDEFINED          = 0
uint8 EVENT_LISTEN_STATE       = 1
uint8 EVENT_RECONISED_UTT      = 2
uint8 EVENT_ASR_ACTIVATION     = 3

# 1-> The ASR changed its listening state.
# 2-> The ASR recognised a full uterance and published the result
# 3-> THe ASR has been activated/deactivated

# THese are the possible listening states published when event_id = LISTENING_STATE

## Listen states
uint8 LISTEN_UNDEFINED = 20
uint8 LISTEN_SPEECH_DETECTED = 21
uint8 LISTEN_WAITING_FOR_SPEECH = 22
uint8 LISTEN_END_OF_SPEECH = 23

# 21-> Some speech have been detected
# 22-> The ASR is waiting for someone to start speaking.
# 23-> The end of an utterance have been found, and will start decoding it.

##  Message variables

# The event type published.
uint8 event_id

# THe listening state of the ASR
uint8 listent_state

# The recognised result in case of evnet_id = RECOGNISED_UTT
asrresult recognized_utterance


# The current state of the recognizer (activated/deactivated)
bool active
