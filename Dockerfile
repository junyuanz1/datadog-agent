FROM datadog/agent:7

# disable autoconfigured checks; DD container checks
# do not work as-is on Render since there's no access
# to Kubelet/kube-state-metrics.
ENV DD_AUTOCONFIG_FROM_ENVIRONMENT=false

ENV NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_STDOUT=yes

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true

ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

ENV DD_BIND_HOST=datadog-agent-j18u
ENV DD_HOSTNAME=datadog-agent-j18u
ENV DD_API_KEY=949c68dfab19e5c6ab344f428826414d
ENV DD_SITE=datadoghq.com
