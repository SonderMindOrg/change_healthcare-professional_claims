# TODOs

## Refactor out Wrapper Mechanics to a common core

This library and [`change_healthcare-eligibility`](https://github.com/SonderMindOrg/change_healthcare-eligibility) both define a threadsafe wrapper to get credentials.
The credential fetching part is literally copy-and-pasted.
So, it's probably a good idea to refactor those into a common component!
More than likely, this would live in some kind of `change_healthcare-common` gem.
