.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;
.super Landroid/os/Handler;
.source "SetupAdditionalAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$102(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 185
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBackupPlusThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$202(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 187
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 216
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "never should happen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 192
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->finish()V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINErrorDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->showVMMSubscribeErrorDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchRestoreYourMedia()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    goto :goto_0

    .line 208
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchBackupYourPhone()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$600(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    goto :goto_0

    .line 212
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchBackupYourPhoneSnapshot()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$700(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
