.class public Lcom/android/settings/framework/preference/location/HtcGPSPreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcGPSPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 62
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c063e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a8f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 66
    return-void
.end method

.method protected onGetValue()Z
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onSetValue(Z)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    .line 103
    move v0, p1

    .line 109
    .local v0, enabled:Z
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v3, v6, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 191
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, quickStartIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    if-ne v0, v6, :cond_3

    .line 144
    const-string v3, "GPSONE"

    const-string v4, "DoubleConfirm"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAssistedGPSVisibility(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    :cond_2
    :goto_1
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_USC:Z

    if-ne v3, v6, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->isShowDiscliamerEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 177
    .local v2, showDisclaimer:Z
    if-ne v0, v6, :cond_0

    if-ne v2, v6, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v2           #showDisclaimer:Z
    :cond_3
    const-string v3, "GPSONE"

    const-string v4, "OFF"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAssistedGPSVisibility(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v3, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v4, "disable_agps"

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
