class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/api/$action"(controller: 'interaction')
        "/api/login"(controller: 'login', action: 'login')

        "/"(view: "/index")
        "500"(view: '/error')
    }
}
