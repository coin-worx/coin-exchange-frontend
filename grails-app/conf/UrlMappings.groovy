class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/api/$action"(controller: 'interaction')
        "/auth/$action"(controller: 'login')

        "/"(view: "/index")
        "500"(view: '/error')
    }
}
