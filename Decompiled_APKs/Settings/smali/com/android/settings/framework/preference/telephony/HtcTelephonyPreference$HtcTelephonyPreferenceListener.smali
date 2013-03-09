.class Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcTelephonyPreferenceListener"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;)V
    .locals 1
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->this$0:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 458
    const-class v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;-><init>(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDataConnectionStateChanged()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data connection state changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->this$0:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;

    iget-object v1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->this$0:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getDataStateDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->TAG:Ljava/lang/String;

    const-string v1, "Service state changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;->TAG:Ljava/lang/String;

    const-string v1, "Signal strength changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method
