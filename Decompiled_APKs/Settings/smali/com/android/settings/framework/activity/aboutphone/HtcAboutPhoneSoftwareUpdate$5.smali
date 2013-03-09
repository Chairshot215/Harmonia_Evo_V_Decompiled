.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;
.super Landroid/telephony/PhoneStateListener;
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
    .line 660
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    #setter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->phoneState:I
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->access$402(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;I)I

    .line 669
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 671
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v1, "mPhoneStateListener,mAlertDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v0, v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 674
    :cond_0
    return-void
.end method
