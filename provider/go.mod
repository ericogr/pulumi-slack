module github.com/ericogr/pulumi-slack/provider

go 1.16

require (
	github.com/ericogr/pulumi-slack/sdk/v3 v3.0.0-20211005150952-b1b27191d216
	github.com/golang/protobuf v1.5.2
	github.com/pulumi/pulumi/pkg/v3 v3.9.1
	github.com/pulumi/pulumi/sdk/v3 v3.9.1
	github.com/slack-go/slack v0.9.5
	google.golang.org/grpc v1.37.0
)

replace (
	github.com/ericogr/pulumi-slack/sdk/v3 v3.0.0-20211005150952-b1b27191d216 => /git/go/src/github.com/ericogr/pulumi-slack/sdk
)