.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAboutPhoneSoftwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    #calls: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->checkOmcRunning()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v0, "OMADMLib"

    const-string v1, "runSessionReceiver start session"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 467
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v1, "runSessionReceiver,mAlertDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget v1, v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    goto :goto_0
.end method
