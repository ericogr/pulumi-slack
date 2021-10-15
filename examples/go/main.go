package main

import (
	"github.com/ericogr/pulumi-slack/sdk/v3/go/slack"
	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		user1, err := slack.LookupUser(ctx, &slack.LookupUserArgs{
			Email: "user1@gmail.com.br",
		})
		if err != nil {
			return err
		}
		user2, err := slack.LookupUser(ctx, &slack.LookupUserArgs{
			Email: "user2@gmail.com.br",
		})
		if err != nil {
			return err
		}

		if err != nil {
			return err
		}
		_, err = slack.NewConversation(ctx, "channelName", &slack.ConversationArgs{
			Name:      pulumi.String("channelName"),
			Topic:     pulumi.String("my topic"),
			Purpose:   pulumi.String("py purpose"),
			IsPrivate: pulumi.Bool(true),
			Members: pulumi.StringArray{
				pulumi.String(user1.User.Id),
				pulumi.String(user2.User.Id),
			},
		})

		return err
	})
}
