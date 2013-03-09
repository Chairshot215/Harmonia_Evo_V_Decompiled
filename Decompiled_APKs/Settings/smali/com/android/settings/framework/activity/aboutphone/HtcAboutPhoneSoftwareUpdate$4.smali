.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;
.super Landroid/os/Handler;
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
    .line 640
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 645
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v1, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    const v3, 0x7f0c03dc

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    const/16 v0, 0x3c

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 650
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 647
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
