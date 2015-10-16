from cloudify import ctx


def set_broker_ip():
    runtime_properties = ctx.target.instance.runtime_properties
    if 'provider_context' not in runtime_properties:
        runtime_properties['provider_context'] = {'cloudify': {}}
    context = runtime_properties['provider_context']
    broker_ip = ctx.source.instance.runtime_properties['rabbitmq_endpoint_ip']
    ctx.logger.info('Appending to provider_context: {0}'.format(broker_ip))
    context['cloudify']['cloudify_agent']['broker_ip'] = broker_ip
    ctx.target.instance.runtime_properties['provider_context'] = context
