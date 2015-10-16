from cloudify import ctx


def set_basic_provider_context():
    ctx.logger.info('Setting cloudify configuration in provider_context...')
    ctx.instance.runtime_properties['provider_context'] = {
        'cloudify': ctx.node.properties['cloudify']
    }
