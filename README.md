# ShippedApp

Build a Rails Application using validations, Paperclip, and UJS.

Users will be able to:

* Sign up, login and logout.

* Create new boats that will associate with the user’s profile.

* Create new jobs.

* Assign boats to jobs.

Validations:

Boats: 

* Must have a unique name.
* Locations must be pulled from a valid list of locations.

Jobs:

* Must have a unique name.
* Cost must be above $1000 for each job.
* Description must be at least 50 characters.
* Origin and destinations must be pulled from a valid list of locations.

