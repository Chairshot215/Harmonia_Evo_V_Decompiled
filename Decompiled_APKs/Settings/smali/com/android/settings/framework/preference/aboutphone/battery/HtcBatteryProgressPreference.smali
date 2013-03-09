.class public Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;
.super Lcom/android/settings/ProgressPreference;
.source "HtcBatteryProgressPreference.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# instance fields
.field private mBatteryEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

.field private mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

.field private mContext:Landroid/content/Context;

.field private mPreviousColorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mPreviousColorType:I

    .line 45
    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->initialize(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private getBatteryColorTypeOnCurrentLevel(I)I
    .locals 4
    .parameter "percentage"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, colorType:I
    const/16 v1, 0xa

    .line 134
    .local v1, redLevel:I
    const/16 v2, 0x19

    .line 143
    .local v2, yellowLevel:I
    const/16 v1, 0x8

    .line 144
    const/16 v2, 0x14

    .line 147
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-eqz v3, :cond_0

    .line 148
    const/16 v2, 0x13

    .line 151
    :cond_0
    if-gt p1, v1, :cond_1

    .line 152
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 153
    :cond_1
    if-gt p1, v2, :cond_2

    .line 154
    const/4 v0, 0x2

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setSelectable(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 115
    iget v2, p1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->percentage:F

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 116
    .local v1, percentage:I
    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->getBatteryColorTypeOnCurrentLevel(I)I

    move-result v0

    .line 118
    .local v0, colorType:I
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mPreviousColorType:I

    if-eq v2, v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setFixedColorType(I)V

    .line 120
    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mPreviousColorType:I

    .line 124
    :cond_0
    add-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v2, 0xa

    .line 125
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const/16 v1, 0x64

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setProgress(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->notifyChanged()V

    .line 128
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->unregisterBatteryStatusReceiver()V

    .line 178
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->registerBatteryStatusReceiver()V

    .line 172
    return-void
.end method

.method public registerBatteryStatusReceiver()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->setOnBatteryStatusChangedListener(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->registerReceiver()V

    .line 98
    :cond_0
    return-void
.end method

.method public unregisterBatteryStatusReceiver()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->unregisterReceiver()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    .line 105
    :cond_0
    return-void
.end method
