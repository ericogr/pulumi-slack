module github.com/ericogr/pulumi-slack/examples/go

go 1.16

require (
	github.com/ericogr/pulumi-slack/sdk/v3 v3.0.0-20211005150952-b1b27191d216
	github.com/pulumi/pulumi/sdk/v3 v3.13.2
)

replace (
	github.com/ericogr/pulumi-slack/sdk/v3 v3.0.0-20211005150952-b1b27191d216 => /git/go/src/github.com/ericogr/pulumi-slack/sdk
)
