# rosary_api.cr
Web-API for [therosaryapi.cf](https://therosaryapi.cf/) which provides various endpoints to access rosary prayers for different days and occasions in JSON format

## Example
```cr
require "./rosary_api"

rosary_api = RosaryApi.new
rosaries = rosary_api.get_rosaries()
puts rosaries
```
