import com.blancrock.backend.AuthParams

class BootStrap {

    def init = { servletContext ->
        createAuthParams([apiKey: '55555', secretKey: 's3cr3t'])
        createAuthParams([apiKey: '44444', secretKey: 's3cr3t'])
        createAuthParams([apiKey: '33333', secretKey: 's3cr3t'])
        createAuthParams([apiKey: '22222', secretKey: 's3cr3t'])
        createAuthParams([apiKey: '11111', secretKey: 's3cr3t'])
    }

    def destroy = {
    }

    private void createAuthParams(Map properties) {
        createIfNotExist(AuthParams, properties)
    }

    private void createIfNotExist(Class clazz, Map propertyMap) {
        def obj = clazz.findWhere(propertyMap)
        if (!obj) {
            obj = clazz.newInstance(propertyMap)
            obj.save(flush: true, failOnError: true)
        }
    }
}
