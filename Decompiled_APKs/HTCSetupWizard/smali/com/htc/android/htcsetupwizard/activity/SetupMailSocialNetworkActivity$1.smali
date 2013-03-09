.class Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$1;
.super Landroid/os/Handler;
.source "SetupMailSocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 795
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 800
    .local v1, key:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 824
    :goto_0
    :pswitch_0
    return-void

    .line 803
    :pswitch_1
    const-string v2, "MailSocialNetwork"

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

    goto :goto_0

    .line 809
    :pswitch_2
    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:SUCCESS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :pswitch_3
    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:FAILED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->checkTmoClientServiceStatus()V
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
