class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/api/$action"(controller: 'interaction')

        "/"(view: "/index")
        "500"(view: '/error')
    }
}
