.class public Lcom/android/settings/RingerVolumePreference;
.super Lcom/htc/preference/HtcVolumePreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I = null

.field private static Debug_volporting:Z = false

.field private static LOGD:Z = false

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x65

.field private static final SEEKBAR_HTC_MUTED_ID_NAME:[Ljava/lang/String; = null

.field private static final SEEKBAR_HTC_UNMUTED_ID_NAME:[Ljava/lang/String; = null

.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_MUTED_RES_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "RingerVolumePreference"

.field static mSilentableStreams:I

.field private static mVolumeKeyBindSeekBarVolumizerId:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 61
    sput-boolean v3, Lcom/android/settings/RingerVolumePreference;->LOGD:Z

    .line 65
    const-string v0, "volPorting"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/RingerVolumePreference;->Debug_volporting:Z

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    .line 72
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 79
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 86
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 93
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 100
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    .line 106
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x407f5c29

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zzzz_icon_launcher_profile_silent"

    aput-object v1, v0, v3

    const-string v1, "zzzz_icon_launcher_phone_ring_mute"

    aput-object v1, v0, v4

    const-string v1, "zzzz_icon_launcher_reminder_mute"

    aput-object v1, v0, v5

    const-string v1, "zzzz_icon_launcher_alarm_mute"

    aput-object v1, v0, v6

    :goto_0
    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_MUTED_ID_NAME:[Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x407f5c29

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zzzz_icon_launcher_sound_display"

    aput-object v1, v0, v3

    const-string v1, "zzzz_icon_launcher_phone_ring"

    aput-object v1, v0, v4

    const-string v1, "zzzz_icon_launcher_reminder"

    aput-object v1, v0, v5

    const-string v1, "zzzz_icon_launcher_alarm"

    aput-object v1, v0, v6

    :goto_1
    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_UNMUTED_ID_NAME:[Ljava/lang/String;

    .line 224
    sput v3, Lcom/android/settings/RingerVolumePreference;->mSilentableStreams:I

    return-void

    .line 106
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zzzz_icon_profile_silent"

    aput-object v1, v0, v3

    const-string v1, "zzzz_icon_phone_ring_mute"

    aput-object v1, v0, v4

    const-string v1, "zzzz_icon_reminder_mute"

    aput-object v1, v0, v5

    const-string v1, "zzzz_icon_alarm_mute"

    aput-object v1, v0, v6

    goto :goto_0

    .line 120
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zzzz_icon_sound_display"

    aput-object v1, v0, v3

    const-string v1, "zzzz_icon_phone_ring"

    aput-object v1, v0, v4

    const-string v1, "zzzz_icon_reminder"

    aput-object v1, v0, v5

    const-string v1, "zzzz_icon_alarm"

    aput-object v1, v0, v6

    goto :goto_1

    .line 72
    :array_0
    .array-data 0x4
        0x3t 0x1t 0x8t 0x7ft
        0x7t 0x1t 0x8t 0x7ft
        0xbt 0x1t 0x8t 0x7ft
        0xdt 0x1t 0x8t 0x7ft
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_2
    .array-data 0x4
        0x2t 0x1t 0x8t 0x7ft
        0x6t 0x1t 0x8t 0x7ft
        0xat 0x1t 0x8t 0x7ft
        0xct 0x1t 0x8t 0x7ft
    .end array-data

    .line 93
    :array_3
    .array-data 0x4
        0x9ct 0x2t 0x8t 0x1t
        0x99t 0x2t 0x8t 0x1t
        0x96t 0x2t 0x8t 0x1t
        0x92t 0x2t 0x8t 0x1t
    .end array-data

    .line 100
    :array_4
    .array-data 0x4
        0x9bt 0x2t 0x8t 0x1t
        0x98t 0x2t 0x8t 0x1t
        0x95t 0x2t 0x8t 0x1t
        0x91t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 138
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 140
    new-instance v0, Lcom/android/settings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$1;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 215
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setStreamType(I)V

    .line 217
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 220
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .line 222
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 223
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 382
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 385
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stop()V

    .line 390
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 382
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    iput-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    :cond_3
    return-void
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 4
    .parameter "htcResName"
    .parameter "defResId"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 518
    .local v0, resId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 519
    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, v0

    goto :goto_0
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final protingLog(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 523
    sget-boolean v0, Lcom/android/settings/RingerVolumePreference;->Debug_volporting:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "RingerVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICS porting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 155
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 156
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 157
    .local v1, muted:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is mute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 160
    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 161
    const-string v4, "RingerVolumePreference"

    const-string v5, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore vibrate mode /outdoor mode icon"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v4, v0, :cond_5

    .line 165
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 187
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSeekBars[i]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    sget v4, Lcom/android/settings/RingerVolumePreference;->mSilentableStreams:I

    const/4 v5, 0x1

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v0

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 192
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 195
    .local v3, volume:I
    :goto_2
    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 197
    const/4 v3, 0x0

    .line 199
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setProgress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 154
    .end local v3           #volume:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 167
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_UNMUTED_ID_NAME:[Ljava/lang/String;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 170
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_MUTED_ID_NAME:[Ljava/lang/String;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 174
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_MUTED_ID_NAME:[Ljava/lang/String;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 178
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_UNMUTED_ID_NAME:[Ljava/lang/String;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 182
    :cond_5
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_6

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_MUTED_ID_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v4, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_HTC_UNMUTED_ID_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v6, v6, v0

    invoke-direct {p0, v4, v6}, Lcom/android/settings/RingerVolumePreference;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    .line 192
    :cond_7
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto/16 :goto_2

    .line 203
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_8
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 149
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onActivityStop()V
    .locals 6

    .prologue
    .line 318
    invoke-super {p0}, Lcom/htc/preference/HtcVolumePreference;->onActivityStop()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 321
    .local v4, vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v4           #vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 324
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 325
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 327
    :cond_2
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    const/4 v13, -0x1

    .line 227
    invoke-super {p0, p1}, Lcom/htc/preference/HtcVolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 229
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 230
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 231
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 232
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v12, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;-><init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v12, v9

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;-><init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    .line 238
    sget v0, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v0, v13, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    const v1, 0x7f080107

    if-ne v0, v1, :cond_2

    .line 240
    sput v9, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    const v1, 0x7f08010b

    if-ne v0, v1, :cond_0

    .line 242
    sput v9, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    goto :goto_1

    .line 246
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_3
    sget v0, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v0, v13, :cond_4

    .line 247
    const-string v0, "RingerVolumePreference"

    const-string v1, "***********mVolumeKeyBindSeekBarVolumizerId did not init..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 253
    .local v11, silentableStreams:I
    sput v11, Lcom/android/settings/RingerVolumePreference;->mSilentableStreams:I

    .line 255
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_7

    .line 256
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 257
    .local v6, checkbox:Landroid/widget/ImageView;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 258
    const/4 v0, 0x1

    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v9

    shl-int/2addr v0, v1

    and-int/2addr v0, v11

    if-eqz v0, :cond_5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silentableStreams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 263
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v9

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v9

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 255
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 268
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    .line 272
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/android/settings/RingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$2;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    const v10, 0x7f080104

    .line 294
    .local v10, id:I
    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 295
    .local v8, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void

    .line 292
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_9
    const v10, 0x7f080108

    .restart local v10       #id:I
    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->protingLog(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, stream_type_id:I
    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 513
    .end local v0           #stream_type_id:I
    :cond_0
    :goto_0
    return-void

    .line 501
    .restart local v0       #stream_type_id:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 508
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/htc/preference/HtcVolumePreference;->onDialogClosed(Z)V

    .line 308
    if-nez p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 310
    .local v3, vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0           #arr$:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 314
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 332
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 339
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v1

    .line 331
    goto :goto_0

    .line 337
    .restart local v0       #isdown:Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/RingerVolumePreference;->onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 424
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 440
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, p1

    .line 428
    check-cast v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    .line 429
    .local v1, myState:Lcom/android/settings/RingerVolumePreference$SavedState;
    invoke-virtual {v1}, Lcom/android/settings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/htc/preference/HtcVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    move-result-object v3

    .line 431
    .local v3, volumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 432
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 433
    .local v2, vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    if-eqz v2, :cond_3

    .line 434
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V

    .line 431
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v2           #vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    .line 439
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v1, Lcom/android/settings/RingerVolumePreference$SavedState;->RingerMode:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/htc/preference/HtcVolumePreference;->onSampleStarting(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 377
    .local v3, vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v3           #vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 401
    invoke-super {p0}, Lcom/htc/preference/HtcVolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 402
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 407
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 408
    .local v1, myState:Lcom/android/settings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    move-result-object v4

    .line 409
    .local v4, volumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 410
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 411
    .local v3, vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 412
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V

    .line 409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    .end local v3           #vol:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    iput v5, v1, Lcom/android/settings/RingerVolumePreference$SavedState;->RingerMode:I

    move-object v2, v1

    .line 417
    goto :goto_0
.end method

.method public onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v2

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    .line 347
    .local v1, voiceCapable:Z
    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v4, v5, :cond_2

    .line 348
    const-string v3, "RingerVolumePreference"

    const-string v4, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore VolumeKey "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 352
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v2, v3

    .line 369
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v3

    .line 351
    goto :goto_1

    .line 354
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 359
    :sswitch_1
    if-eqz v0, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 364
    :sswitch_2
    if-eqz v0, :cond_0

    .line 365
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolumePreference;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method
