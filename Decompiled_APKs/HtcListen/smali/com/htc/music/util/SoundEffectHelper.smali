.class public Lcom/htc/music/util/SoundEffectHelper;
.super Ljava/lang/Object;
.source "SoundEffectHelper.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "HtcListen"

.field static final AP_TAG:Ljava/lang/String; = "active_ap=Music;"

.field static final AudioEffectParameter:Ljava/lang/String; = "dolby_srs_eq"

.field static final AudioParameterStartWith:Ljava/lang/String; = "active_ap=Music;dolby_srs_eq="

.field private static final BEATS_BT_NOT_CHECKED:I = 0x0

.field private static final BEATS_BT_NOT_SUPPORT:I = 0x2

.field private static final BEATS_BT_SUPPORT:I = 0x1

.field public static BEATS_Beats:I = 0x0

.field public static BEATS_Original:I = 0x0

.field private static final BEATS_SOUND_EFFECT:I = 0x2

.field public static BEATS_SRS:I = 0x0

.field public static Beats:I = 0x0

.field public static Dolby:I = 0x0

.field private static final EQSettingPreference:Ljava/lang/String; = "Equalizer"

.field private static final EQ_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final EQ_PARAMETERS_2:Ljava/lang/String; = ",geq10"

.field public static Equalizer:I = 0x0

.field public static final EqualizerStyle:[Ljava/lang/String; = null

.field public static EqualizerStylesFromDevice:[Ljava/lang/String; = null

.field private static final GENERAL_SOUND_EFFECT:I = 0x1

.field private static final LastAudioSetting:Ljava/lang/String; = "LastAudioSetting"

.field private static final LastEQPreferencekey:Ljava/lang/String; = "LastEQStyle"

.field private static final NOT_CHECKED_SOUND_EFFECT:I = 0x0

.field public static Original:I = 0x0

.field private static PopStyleIndex:I = 0x0

.field private static PopStyleStr:Ljava/lang/String; = null

.field public static final SOUNDEFFECT_STYLE_BEATS:Ljava/lang/String; = "Beats"

.field public static final SOUNDEFFECT_STYLE_DOLBY:Ljava/lang/String; = "Dolby"

.field public static final SOUNDEFFECT_STYLE_EQ:Ljava/lang/String; = "Equalizer"

.field public static final SOUNDEFFECT_STYLE_ORIGINAL:Ljava/lang/String; = "Original"

.field public static final SOUNDEFFECT_STYLE_SRS:Ljava/lang/String; = "SRS"

.field public static SRS:I = 0x0

.field private static final SRS_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final SRS_PARAMETERS_2:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

.field private static SoundBeatsEffectIcon:[I = null

.field private static SoundBeatsEffetcStyle:[Ljava/lang/String; = null

.field private static SoundEffectIcon:[I = null

.field private static SoundEffectIndicator:[I = null

.field private static SoundEffetcStyle:[Ljava/lang/String; = null

.field private static final SoundSettingPreference:Ljava/lang/String; = "SoundEffect"

.field private static final SoundSettingPreferenceKey:Ljava/lang/String; = "SoundEffectStyle"

.field private static final TAG:Ljava/lang/String; = "[SoundEffectHelper]"

.field private static final TempSoundSettingPreferenceKey:Ljava/lang/String; = "TempSoundEffectStyle"

.field static final TurnOffEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=off"

.field static final TurnOnEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=on"

.field private static mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mBeats:Landroid/media/audiofx/BassEnhance;

.field private static mBeatsBTStatus:I

.field private static mCurrentSessionID:I

.field private static mEqualizer:Landroid/media/audiofx/Equalizer;

.field private static mHTC51:Landroid/media/audiofx/BassBoost;

.field private static mSRS:Landroid/media/audiofx/BassBoost;

.field private static mSoundEffectStatus:I

.field private static mVoice:Landroid/media/audiofx/BassBoost;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bass Booster"

    aput-object v1, v0, v3

    const-string v1, "Treble Booster"

    aput-object v1, v0, v4

    const-string v1, "Vocal Booster"

    aput-object v1, v0, v5

    const-string v1, "Blues"

    aput-object v1, v0, v6

    const-string v1, "Classical"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Piano"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Rock"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "Dolby"

    aput-object v1, v0, v4

    const-string v1, "SRS"

    aput-object v1, v0, v5

    const-string v1, "Equalizer"

    aput-object v1, v0, v6

    const-string v1, "Beats"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    sput v4, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    sput v5, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    sput v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    sput v7, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    const-string v0, "Pop"

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->PopStyleStr:Ljava/lang/String;

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "SRS"

    aput-object v1, v0, v4

    const-string v1, "Beats"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    sput v5, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    sput v7, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "SRS"

    aput-object v1, v0, v4

    const-string v1, "Equalizer"

    aput-object v1, v0, v5

    const-string v1, "Beats"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    sput v4, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    sput v5, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    sput v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    return-void

    nop

    nop

    :array_0
    .array-data 0x4
        0xaat 0x7t 0x8t 0x2t
        0x97t 0x7t 0x8t 0x2t
        0xa7t 0x7t 0x8t 0x2t
        0x98t 0x7t 0x8t 0x2t
        0x27t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x1et 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xaat 0x7t 0x8t 0x2t
        0xa7t 0x7t 0x8t 0x2t
        0x98t 0x7t 0x8t 0x2t
        0x27t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsBeatsCanBeEnable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static IsSupportBeats(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static IsSupportBeatsBT(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static disableBeats()V
    .locals 2

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableBeats(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v0}, Landroid/media/audiofx/BassEnhance;->release()V

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableBeats(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableEqualizer()V
    .locals 2

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableHTC51()V
    .locals 3

    const-string v0, "[SoundEffectHelper]"

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableHTC51(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableHTC51(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableSRS()V
    .locals 2

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static disableSoundEffect(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "restoreSoundEffect to original"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableHTC51()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableVoice()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    return-void
.end method

.method private static disableVoice()V
    .locals 2

    const-string v0, "[SoundEffectHelper]"

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableVoice(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableVoice(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static enableCurrentSoundEffect(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyCurrentSoundEffect, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audioSessionID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCurrentSoundEffect, temp style is not null~ style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBeatsLastState(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "SoundEffect"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "LastAudioSetting"

    const-string v4, "Beats"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "Beats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const-string v3, "LastAudioSetting"

    const-string v4, "Original"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBeatsLastState(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getBeatsLastState, mService is null. return false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Beats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBeatsLastState, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getBeatsLastState, LastAudioEffect is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getCurrentAudioEffectStyleIndex, mService is null. return 0"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentAudioEffectStyleIndex, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_0
.end method

.method public static getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v3, "SoundEffect"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v0, 0x1

    if-eqz v0, :cond_4

    const-string v3, "SoundEffectStyle"

    const-string v4, "Beats"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    const-string v3, "SRS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Original"

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "Original"

    :cond_2
    return-object v2

    :cond_3
    if-eqz v2, :cond_0

    const-string v3, "Original"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "SRS"

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "SRS"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "Original"

    goto :goto_0

    :cond_6
    const-string v2, "SRS"

    goto :goto_0

    :cond_7
    const-string v3, "SoundEffectStyle"

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentAudioStyleIndex(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_1
.end method

.method public static getCurrentEqualizerStyleIndex(Landroid/content/Context;)I
    .locals 6

    const-string v3, "Equalizer"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "LastEQStyle"

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    aget-object v4, v4, v5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "style is EQ, but we can\'t find match style? style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    goto :goto_1

    :cond_2
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentEqualizerStyleIndex, One is null, preferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EqualizerStylesFromDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getDefaultEffectStr()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultEffectType()I
    .locals 2

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSrsAsDefaultSoundEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    :cond_0
    return v0
.end method

.method public static getHWSoundEffectSetting()Ljava/lang/String;
    .locals 2

    const-string v1, "dolby_srs_eq"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "active_ap=Music;dolby_srs_eq="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "active_ap=Music;dolby_srs_eq="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "SoundEffect"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "LastAudioSetting"

    const-string v2, "Beats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "LastAudioSetting"

    const-string v2, "Original"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSoundEffectIconResourceId(ILandroid/content/Context;)I
    .locals 2

    move v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_3
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getSoundEffectIndicatorResourceId(ILandroid/content/Context;)I
    .locals 2

    move v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_2
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public static getSoundEffectStyleSize(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    goto :goto_0
.end method

.method public static getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v2, "SoundEffect"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TempSoundEffectStyle"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initEqualizerStlyes(Landroid/content/Context;I)V
    .locals 7

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "[SoundEffectHelper]"

    const-string v5, "EqualizerStylesFromDevice array is ready. No need to initial again."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",geq10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v2, Landroid/media/audiofx/Equalizer;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    int-to-short v4, v3

    invoke-virtual {v2, v4}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aput-object v1, v4, v3

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->PopStyleStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput v3, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEqualizerStlyes, mEqualizerStyles["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->release()V

    goto/16 :goto_0
.end method

.method public static isBeatsBTWork(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBeatsEffectOn(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 2

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x1

    const-string v5, "audio"

    const-string v5, "srsfx_sidechain="

    const-string v5, "[SoundEffectHelper]"

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", audioSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, Original mCurrentSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-lez v5, :cond_0

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-eq v5, p2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    sput p2, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    const/4 v4, 0x1

    :cond_1
    const-string v5, "Original"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    const-string v5, "Dolby"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0, p2, v4}, Lcom/htc/music/util/SoundEffectHelper;->setHTC51Effect(Landroid/content/Context;II)V

    goto/16 :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

    :try_start_2
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, IllegalStateException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_4
    :try_start_3
    const-string v5, "SRS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0, p2, v4}, Lcom/htc/music/util/SoundEffectHelper;->setSRSEffect(Landroid/content/Context;II)V

    goto/16 :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    const-string v5, "Beats"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0, p2, v4}, Lcom/htc/music/util/SoundEffectHelper;->setVoiceEffect(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, p2, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsEffect(Landroid/content/Context;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_7
    :try_start_5
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableHTC51()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableVoice()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    const/4 v3, -0x1

    invoke-static {p0, p2}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V

    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    int-to-short v3, v2

    :cond_8
    if-ltz v3, :cond_2

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",geq10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v5, :cond_9

    new-instance v5, Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v5

    if-eq v5, v3, :cond_b

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5, v3}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v1, v5

    :try_start_6
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, mEqualizer.hasControl(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v7}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", UnsupportedOperationException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "setAudioEffect, the same Equalizer, no need to reset."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public static setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V
    .locals 4

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-gez p2, :cond_5

    const/4 p2, 0x0

    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    :try_start_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_4

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_2

    :cond_6
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set audio parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAudioStyleByIndex(ILandroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, p0, :cond_0

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    goto :goto_0

    :cond_2
    if-gez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, p0, :cond_3

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    goto :goto_2
.end method

.method private static setBeatsEffect(Landroid/content/Context;II)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableHTC51()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableVoice()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v1}, Landroid/media/audiofx/BassEnhance;->getEnabled()Z

    move-result v1

    if-ne v3, v1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassEnhance;

    invoke-direct {v1, v6, p1}, Landroid/media/audiofx/BassEnhance;-><init>(II)V

    sput-object v1, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v1, v8}, Landroid/media/audiofx/BassEnhance;->setStrength(S)V

    invoke-virtual {v1, v3}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static setBeatsNotificationBar(Landroid/content/Context;ZZ)V
    .locals 4

    const-string v1, "htchardware"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    if-eqz v0, :cond_0

    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeatsNotificationBar, bEffectOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bAppPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HtcListen"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setBeatsNotificationBar(Landroid/content/Context;ZZI)V
    .locals 4

    const-string v1, "htchardware"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    if-eqz v0, :cond_0

    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeatsNotificationBar, bEffectOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bAppPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headsetMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HtcListen"

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEqualizerStyle, setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    :cond_2
    if-nez v2, :cond_4

    const-string v4, "[SoundEffectHelper]"

    const-string v5, "setEqualizerStyle, not EQ setting."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v4, "Equalizer"

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "LastEQStyle"

    invoke-interface {v0, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static setHTC51Effect(Landroid/content/Context;II)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v7, "audio"

    const-string v5, "[SoundEffectHelper]"

    const-string v4, "srsfx_sidechain="

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableVoice()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-ne v3, v1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    invoke-direct {v1, v6, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1, v8}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    invoke-virtual {v1, v3}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LastAudioSetting"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setSRSEffect(Landroid/content/Context;II)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v7, "audio"

    const-string v5, "[SoundEffectHelper]"

    const-string v4, "srsfx_sidechain="

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableHTC51()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableVoice()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-ne v3, v1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    invoke-direct {v1, v6, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1, v8}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    invoke-virtual {v1, v3}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTempAudioStyle, set audio setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "TempSoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setVoiceEffect(Landroid/content/Context;II)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v7, "audio"

    const-string v5, "[SoundEffectHelper]"

    const-string v4, "srsfx_sidechain="

    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableHTC51()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-ne v3, v1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_movie.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    invoke-direct {v1, v6, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srsfx_sidechain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_movie.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1, v8}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    invoke-virtual {v1, v3}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
