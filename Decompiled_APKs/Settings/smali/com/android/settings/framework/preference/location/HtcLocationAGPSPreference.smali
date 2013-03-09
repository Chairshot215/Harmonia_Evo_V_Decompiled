.class public Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcLocationAGPSPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 73
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 80
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    .line 94
    return-void
.end method

.method protected onGetValue()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 135
    iget-object v6, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateAGpsInConfig()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 139
    .local v2, gps:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/util/HtcLocationUtil;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v3

    .line 140
    .local v3, mobile:Z
    iget-object v6, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcLocationUtil;->getreadAGpsConfig()Z

    move-result v5

    .line 141
    .local v5, readAgpsConfig:Z
    iget-object v6, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcLocationUtil;->getEnableAGpsInConfig()Z

    move-result v1

    .line 143
    .local v1, enableAgpsInConfig:Z
    const/4 v4, -0x1

    .line 144
    .local v4, networkType:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 157
    :cond_0
    if-eqz v2, :cond_2

    .line 159
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 160
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->dispatchSetEnabledMessage(Z)V

    .line 168
    :goto_0
    return v1

    .line 162
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->dispatchSetEnabledMessage(Z)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->dispatchSetEnabledMessage(Z)V

    goto :goto_0
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;->unregisterReceiver()V

    .line 108
    return-void
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;->registerReceiver()V

    .line 101
    return-void
.end method

.method protected onSetValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoAGpsOn(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateSystemAGpsSettings(Z)V

    goto :goto_0
.end method

.method public reflashUI()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->dispatchGetValueMessage()V

    .line 182
    return-void
.end method
