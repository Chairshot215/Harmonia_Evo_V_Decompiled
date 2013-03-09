.class public Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcLocAGPSSyncTimePreference.java"

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
    .line 36
    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 72
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0300

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    .line 78
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    .line 92
    return-void
.end method

.method protected onGetValue()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v5, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v5}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateGpsTimeSync()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, gps:Z
    iget-object v5, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v5}, Lcom/android/settings/framework/util/HtcLocationUtil;->getreadGpsTimeSync()Z

    move-result v2

    .line 137
    .local v2, readGpsTimeSync:Z
    iget-object v5, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mHtcLocationUtil:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v5}, Lcom/android/settings/framework/util/HtcLocationUtil;->getEnableGpsTimeSync()Z

    move-result v0

    .line 145
    .local v0, enableGpsTimeSync:Z
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->dispatchSetEnabledMessage(Z)V

    .line 148
    if-eqz v2, :cond_1

    .line 149
    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->dispatchSetEnabledMessage(Z)V

    move v3, v4

    .line 158
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->dispatchSetEnabledMessage(Z)V

    .line 163
    invoke-static {v4}, Lcom/android/settings/framework/util/HtcLocationUtil;->writeGpsTimeSync(Z)V

    move v3, v4

    .line 164
    goto :goto_0
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;->unregisterReceiver()V

    .line 106
    return-void
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbstractReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;->registerReceiver()V

    .line 99
    return-void
.end method

.method protected onSetValue(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 170
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->writeGpsTimeSync(Z)V

    .line 171
    return-void
.end method
