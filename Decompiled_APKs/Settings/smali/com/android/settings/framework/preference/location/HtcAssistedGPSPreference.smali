.class public Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcAssistedGPSPreference.java"


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
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 65
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a92

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a91

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a90

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 70
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setDependency(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onGetValue()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v2, "disable_agps"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    .line 142
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v2, "enable_agps"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v2, "disable_agps"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v2, "disable_agps"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetValue(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 157
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoAGpsOnQCT(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoMobileNetwork(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    const-string v1, "disable_agps"

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->LocManagerSendExtraCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reflashUI()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->dispatchGetValueMessage()V

    .line 175
    return-void
.end method
