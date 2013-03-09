.class public Lcom/htc/android/htcime/util/AudioService;
.super Ljava/lang/Object;
.source "AudioService.java"


# static fields
.field public static final FX_KEY_CLICK:I = 0x0

.field public static final KEYPRESS_DELETE:I = 0x2

.field public static final KEYPRESS_ENTER:I = 0x1

.field public static final KEYPRESS_SPACE:I = 0x3

.field public static final KEYPRESS_STANDARD:I


# instance fields
.field private DEBUG:Z

.field private final DelVol:F

.field private final EnterVol:F

.field private final NUM_SOUNDPOOL_CHANNELS:I

.field private final NUM_SOUND_EFFECTS:I

.field private final SOUND_EFFECT_FILES:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private final SOUND_EFFECT_VOLUME:F

.field private final SOUND_EFFECT_VOLUME_2:F

.field private final SpaceVol:F

.field private final StandardVol:F

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioType:I

.field mContext:Landroid/content/Context;

.field private mDelKeyPlayer:Landroid/media/MediaPlayer;

.field private mEnterKeyPlayer:Landroid/media/MediaPlayer;

.field private mSilentMode:Z

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpaceKeyPlayer:Landroid/media/MediaPlayer;

.field private mStandardKeyPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/util/AudioService;-><init>(Landroid/content/Context;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const v5, 0x3f19999a

    const v4, 0x3dcccccd

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "SIP_AudioService"

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->TAG:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioType:I

    .line 44
    iput-boolean v2, p0, Lcom/htc/android/htcime/util/AudioService;->DEBUG:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 49
    iput v1, p0, Lcom/htc/android/htcime/util/AudioService;->NUM_SOUNDPOOL_CHANNELS:I

    .line 50
    iput v4, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_VOLUME:F

    .line 51
    iput v4, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_VOLUME_2:F

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES:[I

    .line 74
    iput v1, p0, Lcom/htc/android/htcime/util/AudioService;->NUM_SOUND_EFFECTS:I

    .line 79
    new-array v0, v1, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 92
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/htc/android/htcime/util/AudioService;->StandardVol:F

    .line 93
    iput v5, p0, Lcom/htc/android/htcime/util/AudioService;->EnterVol:F

    .line 94
    iput v5, p0, Lcom/htc/android/htcime/util/AudioService;->DelVol:F

    .line 95
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/util/AudioService;->SpaceVol:F

    .line 112
    iput-object p1, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    .line 113
    iput p2, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioType:I

    .line 114
    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private loadMediaPlayer()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3ecccccd

    const v2, 0x3f19999a

    .line 263
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f06

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    .line 264
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const v1, 0x7f06000b

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    .line 268
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const v1, 0x7f06000a

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    .line 272
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const v1, 0x7f06000c

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    .line 276
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 278
    :cond_3
    return-void
.end method

.method private loadSoundPool()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v9, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 184
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v6, :cond_0

    .line 222
    :goto_0
    return v4

    .line 193
    :cond_0
    new-array v2, v9, [I

    .line 194
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    if-ge v1, v9, :cond_1

    .line 195
    aput v10, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    if-ge v0, v9, :cond_4

    .line 204
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aget v6, v6, v5

    if-nez v6, :cond_2

    .line 202
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aget v6, v6, v4

    aget v6, v2, v6

    if-ne v6, v10, :cond_3

    .line 210
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES:[I

    aget v8, v8, v0

    invoke-virtual {v6, v7, v8, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    .line 212
    .local v3, sampleId:I
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aput v3, v6, v5

    .line 213
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aget v6, v6, v4

    aput v3, v2, v6

    goto :goto_3

    .line 218
    .end local v3           #sampleId:I
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v7, v7, v0

    aget v7, v7, v4

    aget v7, v2, v7

    aput v7, v6, v5

    goto :goto_3

    :cond_4
    move v4, v5

    .line 222
    goto :goto_0
.end method

.method private playSoundEffectMP(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_0

    .line 310
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private playSoundEffectSP(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x3dcccccd

    .line 226
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/AudioService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RRRLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play sound effect sp, type - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-lez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, p1

    aget v1, v1, v5

    if-nez p1, :cond_3

    :cond_3
    if-nez p1, :cond_4

    :cond_4
    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private unloadMediaPlayer()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 282
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 284
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSpaceKeyPlayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mDelKeyPlayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mEnterKeyPlayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mStandardKeyPlayer:Landroid/media/MediaPlayer;

    .line 286
    return-void
.end method

.method private unloadSoundPool()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 258
    :goto_0
    return-void

    .line 242
    :cond_0
    new-array v2, v7, [I

    .line 243
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 244
    aput v5, v2, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 248
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    aget v3, v3, v6

    if-gtz v3, :cond_3

    .line 247
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 253
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    aput v8, v3, v6

    .line 254
    iget-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    aput v8, v2, v3

    goto :goto_3

    .line 257
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/AudioService;->unloadSoundEffects()V

    .line 123
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/AudioService;->loadSoundEffects()Z

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/AudioService;->updateRingerMode()V

    .line 120
    return-void
.end method

.method public loadSoundEffects()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v1, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioType:I

    if-ne v0, v2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/htc/android/htcime/util/AudioService;->loadMediaPlayer()V

    .line 144
    :goto_0
    monitor-exit v1

    .line 146
    return v2

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/AudioService;->loadSoundPool()Z

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 3
    .parameter "effectType"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSilentMode:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/AudioService;->playSoundEffectMP(I)V

    .line 177
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/AudioService;->playSoundEffectSP(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public unloadSoundEffects()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/util/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/htc/android/htcime/util/AudioService;->unloadMediaPlayer()V

    .line 160
    :goto_0
    monitor-exit v1

    .line 161
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/AudioService;->unloadSoundPool()V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRingerMode()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 130
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/AudioService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SIP_AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRingerMode - mAudioManager.getRingerMode() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/AudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/util/AudioService;->mSilentMode:Z

    .line 133
    :cond_2
    return-void

    .line 131
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
