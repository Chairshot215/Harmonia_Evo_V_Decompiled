.class public Lcom/android/phone/InCallScreen$PhoneSpeekControl;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneSpeekControl"
.end annotation


# static fields
.field static mAM:Landroid/media/AudioManager; = null

.field static final mVolumeProgressOffset:I = 0x1

.field static mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7238
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mAM:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4100()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 7236
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 7236
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getCurrentStreamType()I

    move-result v0

    return v0
.end method

.method public static adjustLower()Z
    .locals 1

    .prologue
    .line 7297
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->adjustVolume(I)Z

    move-result v0

    return v0
.end method

.method public static adjustRaise()Z
    .locals 1

    .prologue
    .line 7301
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->adjustVolume(I)Z

    move-result v0

    return v0
.end method

.method private static adjustVolume(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7305
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7306
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getCurrentStreamType()I

    move-result v3

    .line 7308
    .local v3, streamType:I
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 7309
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 7310
    .local v1, currentVolume:I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 7311
    .local v4, volumeMax:I
    add-int v2, v1, p0

    .line 7313
    .local v2, nextVolume:I
    if-ltz v2, :cond_0

    if-le v2, v4, :cond_1

    .line 7324
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #currentVolume:I
    .end local v2           #nextVolume:I
    .end local v3           #streamType:I
    .end local v4           #volumeMax:I
    :cond_0
    :goto_0
    return v5

    .line 7317
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #currentVolume:I
    .restart local v2       #nextVolume:I
    .restart local v3       #streamType:I
    .restart local v4       #volumeMax:I
    :cond_1
    invoke-virtual {v0, p0, v3, v6}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 7319
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_0

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #currentVolume:I
    .end local v2           #nextVolume:I
    .end local v3           #streamType:I
    .end local v4           #volumeMax:I
    :cond_2
    move v5, v6

    .line 7324
    goto :goto_0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7328
    sget-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 7329
    sget-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 7330
    sput-object v1, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    .line 7332
    :cond_0
    sput-object v1, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mAM:Landroid/media/AudioManager;

    .line 7333
    return-void
.end method

.method private static getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 7350
    sget-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mAM:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 7351
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mAM:Landroid/media/AudioManager;

    .line 7353
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mAM:Landroid/media/AudioManager;

    return-object v0
.end method

.method private static getCurrentStreamType()I
    .locals 2

    .prologue
    .line 7357
    const/4 v0, 0x0

    .line 7358
    .local v0, streamType:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isBTAudioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7359
    const/4 v0, 0x6

    .line 7361
    :cond_0
    return v0
.end method

.method private static getSeekBar()Lcom/htc/widget/HtcSeekBar;
    .locals 3

    .prologue
    .line 7336
    sget-object v2, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    if-nez v2, :cond_0

    .line 7337
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 7338
    .local v1, phoneApp:Lcom/android/phone/PhoneApp;
    if-eqz v1, :cond_0

    .line 7339
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 7340
    .local v0, incallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v0, :cond_0

    .line 7341
    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSeekBar;

    sput-object v2, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    .line 7346
    .end local v0           #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_0
    sget-object v2, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->mVolumeSeekBar:Lcom/htc/widget/HtcSeekBar;

    return-object v2
.end method

.method public static initSpeekerControl(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 7242
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p0, :cond_0

    .line 7279
    :goto_0
    return-void

    .line 7245
    :cond_0
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 7246
    .local v0, am:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getCurrentStreamType()I

    move-result v1

    .line 7248
    .local v1, streamType:I
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 7249
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 7251
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 7252
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$PhoneSpeekControl$1;

    invoke-direct {v3}, Lcom/android/phone/InCallScreen$PhoneSpeekControl$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public static isVolumeControlEnable()Z
    .locals 1

    .prologue
    .line 7281
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v0

    return v0
.end method

.method public static updateSeekbarProgress()Z
    .locals 4

    .prologue
    .line 7284
    const/4 v0, 0x0

    .line 7285
    .local v0, result:Z
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7286
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7287
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7288
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getCurrentStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 7289
    .local v1, volume:I
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getSeekBar()Lcom/htc/widget/HtcSeekBar;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 7290
    const/4 v0, 0x1

    .line 7294
    .end local v1           #volume:I
    :cond_0
    return v0
.end method
