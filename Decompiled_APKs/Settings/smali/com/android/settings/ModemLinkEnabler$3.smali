.class Lcom/android/settings/ModemLinkEnabler$3;
.super Landroid/os/Handler;
.source "ModemLinkEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ModemLinkEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings/ModemLinkEnabler$3;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 407
    :pswitch_2
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 408
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c0329

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 410
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 414
    :goto_1
    const-string v0, "ModemLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_disable_ok, airplane = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/ModemLinkEnabler;->airplane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " USB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EAS_Allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_0
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c032f

    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0c032d

    goto :goto_2

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
