.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAboutPhoneNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "gsm.network.type"

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c075e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, networkType:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    .end local v0           #networkType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, operatorName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, operatorPlmn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    .end local v0           #operatorName:Ljava/lang/String;
    .end local v1           #operatorPlmn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v0       #operatorName:Ljava/lang/String;
    .restart local v1       #operatorPlmn:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    .end local v0           #operatorName:Ljava/lang/String;
    .end local v1           #operatorPlmn:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    const v3, 0x7f0c075e

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method
