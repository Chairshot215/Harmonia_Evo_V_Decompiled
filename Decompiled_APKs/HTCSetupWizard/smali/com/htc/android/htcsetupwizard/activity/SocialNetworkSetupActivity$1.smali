.class Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;
.super Landroid/os/Handler;
.source "SocialNetworkSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 144
    .local v1, key:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 146
    :pswitch_0
    const-string v2, "OOBE_SocialNetworkSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:LOGOUT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updateAllStatus()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    .line 181
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCheckAccount:Z
    invoke-static {v2, v5}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;Z)Z

    .line 182
    const-string v2, "OOBE_SocialNetworkSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:UPDATE_STAUS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updatePreferenceStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 159
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const-string v3, "username"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_1

    .line 162
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 165
    :pswitch_5
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 168
    :pswitch_6
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 171
    :pswitch_7
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 174
    :pswitch_8
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 177
    :pswitch_9
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
