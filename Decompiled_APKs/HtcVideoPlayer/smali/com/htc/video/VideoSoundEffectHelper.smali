.class public Lcom/htc/video/VideoSoundEffectHelper;
.super Ljava/lang/Object;
.source "VideoSoundEffectHelper.java"


# static fields
.field private static final AudioEffectCodecParameter:Ljava/lang/String; = "active_ap=Video;dolby_srs_eq="

.field private static final AudioEffectStreamParameter:Ljava/lang/String; = "active_ap=Video;sound_effect_enable="

.field private static EFFECTS_ARRAY:[[I = null

.field private static EFFECTS_RES_ARRAY:[[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "VideoSoundEffectHelper"

.field private static final PARAM_SRSFX_SIDECHAIN_HTC51:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

.field private static final PARAM_SRSFX_SIDECHAIN_PREFIX:Ljava/lang/String; = "srsfx_sidechain="

.field private static final PARAM_SRSFX_SIDECHAIN_SRS:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_movie.cfg"

.field private static final PERFERENCE_FIELD_STOREDBEATSEFFECT:Ljava/lang/String; = "beats_effect_idx"

.field private static final PERFERENCE_FIELD_STOREDEFFECT:Ljava/lang/String; = "effect_idx"

.field private static final PERFERENCE_FILE_PREFIX:Ljava/lang/String; = "video_sound_effect"

.field public static final SOUND_EFFECT_BEATS:I = 0x4

.field public static final SOUND_EFFECT_DOLBY:I = 0x3

.field public static final SOUND_EFFECT_HTC51:I = 0x2

.field private static final SOUND_EFFECT_NONE:I = -0x1

.field public static final SOUND_EFFECT_SRS:I = 0x1

.field public static final SOUND_EFFECT_STATE_OFF:I = 0x0

.field public static final SOUND_EFFECT_STATE_ON:I = 0x1

.field public static final SOUND_EFFECT_SURROUND:I

.field private static SUPPORT_EFFECTS:[[I

.field public static SoundEffectStyle:[I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSessionId:I

.field private mBeats:Landroid/media/audiofx/BassEnhance;

.field private mEffectIdx:I

.field private mHTC51:Landroid/media/audiofx/BassBoost;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mSRS:Landroid/media/audiofx/BassBoost;

.field private mSoundEffectStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x2080845

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 69
    invoke-static {}, Lcom/htc/video/Common/Constants;->getVideoEffectSupport()I

    move-result v2

    .line 70
    .local v2, supports:I
    const/4 v0, 0x0

    .line 71
    .local v0, index:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    new-array v3, v5, [I

    aput v0, v3, v7

    aput v9, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 78
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v5, :cond_0

    .line 80
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x2080278

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 84
    :cond_0
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_1

    .line 86
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x208084a

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 90
    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-ne v3, v8, :cond_2

    .line 92
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020026

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 96
    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 100
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020005

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020003

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_3
    :goto_0
    new-array v3, v6, [[I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    sput-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    .line 127
    invoke-static {}, Lcom/htc/video/Common/Constants;->getVideoEffectSupport()I

    move-result v2

    .line 128
    const/4 v0, 0x0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v1       #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v3, 0x5

    new-array v3, v3, [I

    sput-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    .line 133
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-nez v3, :cond_6

    .line 135
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f04001e

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v7, v3, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 139
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v5, :cond_4

    .line 141
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f04001f

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    const/4 v4, 0x3

    aput v4, v3, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_4
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_5

    .line 148
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040020

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v6, v3, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_5
    and-int/lit8 v3, v2, 0x4

    if-ne v3, v8, :cond_6

    .line 155
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040021

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v5, v3, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_6
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 163
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 165
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040024

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v6, v3, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    new-array v3, v5, [I

    aput v0, v3, v7

    const/high16 v4, 0x7f04

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v8, v3, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_7
    :goto_1
    new-array v3, v6, [[I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    sput-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    .line 198
    invoke-static {}, Lcom/htc/video/Common/Constants;->getVideoEffectSupport()I

    move-result v2

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .restart local v1       #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-nez v3, :cond_a

    .line 204
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v5, :cond_8

    .line 207
    new-array v3, v5, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_8
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_9

    .line 212
    new-array v3, v5, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_9
    and-int/lit8 v3, v2, 0x4

    if-ne v3, v8, :cond_a

    .line 217
    new-array v3, v5, [I

    fill-array-data v3, :array_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_a
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 223
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 225
    new-array v3, v5, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-array v3, v5, [I

    fill-array-data v3, :array_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_b
    :goto_2
    new-array v3, v6, [[I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    sput-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    .line 241
    return-void

    .line 105
    :cond_c
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 107
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020004

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020003

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 114
    :cond_d
    new-array v3, v5, [I

    aput v0, v3, v7

    aput v9, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f020005

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 172
    :cond_e
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 174
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040023

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v7, v3, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 177
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040022

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v8, v3, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 183
    :cond_f
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f04001e

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v7, v3, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    new-array v3, v5, [I

    aput v0, v3, v7

    const v4, 0x7f040024

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v6, v3, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 228
    :cond_10
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 230
    new-array v3, v5, [I

    fill-array-data v3, :array_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-array v3, v5, [I

    fill-array-data v3, :array_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 235
    :cond_11
    new-array v3, v5, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-array v3, v5, [I

    fill-array-data v3, :array_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 204
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x4t 0x7ft
    .end array-data

    .line 207
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x4t 0x7ft
    .end array-data

    .line 212
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xet 0x0t 0x4t 0x7ft
    .end array-data

    .line 217
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xft 0x0t 0x4t 0x7ft
    .end array-data

    .line 225
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x4t 0x7ft
    .end array-data

    .line 226
    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x4t 0x7ft
    .end array-data

    .line 230
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x4t 0x7ft
    .end array-data

    .line 231
    :array_7
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x4t 0x7ft
    .end array-data

    .line 235
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x4t 0x7ft
    .end array-data

    .line 236
    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "audioSessionId"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 248
    iput-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    .line 249
    iput-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    .line 258
    sput-object p1, Lcom/htc/video/VideoSoundEffectHelper;->mContext:Landroid/content/Context;

    .line 259
    sget-object v0, Lcom/htc/video/VideoSoundEffectHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 260
    invoke-static {}, Lcom/htc/video/VideoSoundEffectHelper;->getPerferenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mPreference:Landroid/content/SharedPreferences;

    .line 262
    iput p2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mEffectIdx:I

    .line 265
    iput v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSoundEffectStatus:I

    .line 266
    return-void
.end method

.method private static buildParameter(II)Ljava/lang/String;
    .locals 2
    .parameter "effectId"
    .parameter "audioSessionId"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "srsfx_sidechain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    packed-switch p0, :pswitch_data_0

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :pswitch_0
    const-string v1, ",trumedia,/system/etc/soundimage/srsfx_trumedia_movie.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :pswitch_1
    const-string v1, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getPerferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "video_sound_effect"

    return-object v0
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 272
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 273
    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 278
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 279
    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    .line 283
    :cond_1
    invoke-static {v1, v1}, Lcom/htc/video/VideoSoundEffectHelper;->updateBeatsEffectStatus(ZZ)V

    .line 284
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    .line 286
    iget-object v0, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v0}, Landroid/media/audiofx/BassEnhance;->release()V

    .line 287
    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    .line 289
    :cond_2
    return-void
.end method

.method public static updateBeatsEffectStatus(ZZ)V
    .locals 4
    .parameter "enableBeats"
    .parameter "isPlaying"

    .prologue
    .line 372
    const-string v1, "VideoSoundEffectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateBeatsEffectStatus]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v1, Lcom/htc/video/VideoSoundEffectHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    sget-object v1, Lcom/htc/video/VideoSoundEffectHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    .line 392
    .local v0, audioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    const-string v1, "HtcVideoPlayer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->setBeatsState(ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getIconResource(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "effectIdx"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, nResourceId:I
    packed-switch p2, :pswitch_data_0

    .line 439
    :goto_0
    return v0

    .line 423
    :pswitch_0
    invoke-static {p1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_Surround_Rest(Landroid/content/Context;)I

    move-result v0

    .line 424
    goto :goto_0

    .line 426
    :pswitch_1
    invoke-static {p1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_Srs_Rest(Landroid/content/Context;)I

    move-result v0

    .line 427
    goto :goto_0

    .line 429
    :pswitch_2
    invoke-static {p1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_Srs51_Rest(Landroid/content/Context;)I

    move-result v0

    .line 430
    goto :goto_0

    .line 432
    :pswitch_3
    invoke-static {p1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_Dolby_Rest(Landroid/content/Context;)I

    move-result v0

    .line 433
    goto :goto_0

    .line 435
    :pswitch_4
    invoke-static {p1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_Beats_Rest(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getNextRecommendffect(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "currentEffectIdx"

    .prologue
    const/4 v4, 0x0

    .line 396
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    array-length v2, v3

    .line 397
    .local v2, supportLenght:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 399
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    if-ne v3, p2, :cond_1

    .line 401
    add-int/lit8 v1, v0, 0x1

    .local v1, nextSupport:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 403
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/htc/video/VideoSoundEffectHelper;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    .line 410
    .end local v1           #nextSupport:I
    :goto_2
    return v3

    .line 401
    .restart local v1       #nextSupport:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    .end local v1           #nextSupport:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_2
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v4

    aget v3, v3, v4

    goto :goto_2
.end method

.method getSettingStringResource(I)I
    .locals 5
    .parameter "effectIdx"

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, id:I
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    array-length v2, v3

    .line 446
    .local v2, supportLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 447
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    .line 448
    move v1, v0

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_1
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 453
    return v1
.end method

.method getSoundIconResource(I)I
    .locals 5
    .parameter "effectIdx"

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, id:I
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    array-length v2, v3

    .line 475
    .local v2, supportLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 476
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    .line 477
    move v1, v0

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 483
    return v1
.end method

.method getSoundStringResource(I)I
    .locals 5
    .parameter "effectIdx"

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, id:I
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    array-length v2, v3

    .line 460
    .local v2, supportLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 461
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    .line 462
    move v1, v0

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 468
    return v1
.end method

.method getStoredBeatsCodec()I
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "beats_effect_idx"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, effectIdx:I
    return v0
.end method

.method getStoredCodec()I
    .locals 4

    .prologue
    .line 487
    iget-object v1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "effect_idx"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, effectIdx:I
    return v0
.end method

.method isEnabled(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "effectIdx"

    .prologue
    const/4 v3, 0x0

    .line 514
    const/4 v1, 0x0

    .line 516
    .local v1, isSupport:Z
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    array-length v2, v4

    .line 517
    .local v2, supportLenght:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 519
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    if-ne v4, p2, :cond_0

    .line 521
    const/4 v1, 0x1

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    if-nez v1, :cond_2

    .line 570
    :goto_1
    return v3

    .line 531
    :cond_2
    const/4 v1, 0x0

    .line 533
    packed-switch p2, :pswitch_data_0

    .line 567
    :pswitch_0
    const/4 v1, 0x0

    :cond_3
    :goto_2
    move v3, v1

    .line 570
    goto :goto_1

    .line 536
    :pswitch_1
    const/4 v1, 0x1

    .line 537
    goto :goto_2

    .line 539
    :pswitch_2
    const/4 v1, 0x1

    .line 540
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 542
    const/4 v1, 0x0

    goto :goto_2

    .line 546
    :pswitch_3
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-nez v3, :cond_5

    .line 548
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    :cond_4
    const/4 v1, 0x1

    .line 554
    :cond_5
    invoke-static {p1}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 556
    const/4 v1, 0x1

    goto :goto_2

    .line 560
    :pswitch_4
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    const/4 v1, 0x1

    goto :goto_2

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method numSupportCodec()I
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    array-length v0, v0

    return v0
.end method

.method refreshEffectList()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 575
    const/4 v2, 0x0

    .line 576
    .local v2, index:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v3, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, aSupport:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v0, aIcon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v4, 0x5

    new-array v4, v4, [I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    move-object v4, v5

    .line 580
    check-cast v4, [[I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    move-object v4, v5

    .line 581
    check-cast v4, [[I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    .line 582
    check-cast v5, [[I

    sput-object v5, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    .line 584
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f040024

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f020005

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v7, v4, v2

    .line 592
    add-int/lit8 v2, v2, 0x1

    .line 594
    new-array v4, v6, [I

    aput v2, v4, v8

    const/high16 v5, 0x7f04

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f020003

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v9, v4, v2

    .line 598
    add-int/lit8 v2, v2, 0x1

    .line 599
    const-string v4, "VideoSoundEffectHelper"

    const-string v5, "Non-beats head set dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    :goto_0
    new-array v4, v7, [[I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    .line 634
    new-array v4, v7, [[I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    .line 635
    new-array v4, v7, [[I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    .line 636
    return-void

    .line 601
    :cond_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f040023

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f020004

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v8, v4, v2

    .line 607
    add-int/lit8 v2, v2, 0x1

    .line 609
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f040022

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-array v4, v6, [I

    fill-array-data v4, :array_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f020003

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v9, v4, v2

    .line 613
    add-int/lit8 v2, v2, 0x1

    .line 614
    const-string v4, "VideoSoundEffectHelper"

    const-string v5, "Beats head set dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_2
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f04001e

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    new-array v4, v6, [I

    fill-array-data v4, :array_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x2080845

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v8, v4, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    .line 624
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f040024

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    new-array v4, v6, [I

    fill-array-data v4, :array_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    new-array v4, v6, [I

    aput v2, v4, v8

    const v5, 0x7f020005

    aput v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aput v7, v4, v2

    .line 628
    add-int/lit8 v2, v2, 0x1

    .line 629
    const-string v4, "VideoSoundEffectHelper"

    const-string v5, "No dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x4t 0x7ft
    .end array-data

    .line 595
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x4t 0x7ft
    .end array-data

    .line 604
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x4t 0x7ft
    .end array-data

    .line 610
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x4t 0x7ft
    .end array-data

    .line 619
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x4t 0x7ft
    .end array-data

    .line 625
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method releaseEffectArray()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    move-object v0, v1

    check-cast v0, [[I

    sput-object v0, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_ARRAY:[[I

    move-object v0, v1

    .line 641
    check-cast v0, [[I

    sput-object v0, Lcom/htc/video/VideoSoundEffectHelper;->EFFECTS_RES_ARRAY:[[I

    .line 642
    check-cast v1, [[I

    sput-object v1, Lcom/htc/video/VideoSoundEffectHelper;->SUPPORT_EFFECTS:[[I

    .line 643
    return-void
.end method

.method setStreamStatus(I)V
    .locals 4
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 292
    iget v1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSoundEffectStatus:I

    if-ne v1, p1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 297
    :cond_0
    iput p1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSoundEffectStatus:I

    .line 298
    iget v1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSoundEffectStatus:I

    if-ne v1, v2, :cond_1

    .line 299
    const-string v0, "on"

    .line 306
    .local v0, cmd:Ljava/lang/String;
    :goto_1
    const-string v1, "VideoSoundEffectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to enable stream status with cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0           #cmd:Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    .line 303
    .restart local v0       #cmd:Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/video/VideoSoundEffectHelper;->triggerCodec(IZ)V

    goto :goto_1
.end method

.method storeCodec(I)V
    .locals 2
    .parameter "effectIdx"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    .local v0, preEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    const-string v1, "beats_effect_idx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    return-void

    .line 505
    :cond_1
    const-string v1, "effect_idx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 508
    :cond_2
    const-string v1, "effect_idx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method triggerCodec(IZ)V
    .locals 8
    .parameter "effectIdx"
    .parameter "isPlaying"

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 310
    iget v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mEffectIdx:I

    if-ne v2, p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/video/VideoSoundEffectHelper;->setStreamStatus(I)V

    .line 318
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-static {v2, v3}, Lcom/htc/video/VideoSoundEffectHelper;->buildParameter(II)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, rest:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/video/VideoSoundEffectHelper;->release()V

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 360
    const-string v0, "EFFECT_SURROUND"

    .line 364
    .local v0, newEffect:Ljava/lang/String;
    :goto_1
    iput p1, p0, Lcom/htc/video/VideoSoundEffectHelper;->mEffectIdx:I

    .line 366
    const-string v2, "VideoSoundEffectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to play codec with cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    .end local v0           #newEffect:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-nez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-static {v5, v3}, Lcom/htc/video/VideoSoundEffectHelper;->buildParameter(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 327
    new-instance v2, Landroid/media/audiofx/BassBoost;

    iget v3, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-direct {v2, v6, v3}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 328
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, v7}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 332
    const-string v0, "EFFECT_SRS"

    .line 333
    .restart local v0       #newEffect:Ljava/lang/String;
    goto :goto_1

    .line 335
    .end local v0           #newEffect:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    if-nez v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-static {v3, v4}, Lcom/htc/video/VideoSoundEffectHelper;->buildParameter(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 338
    new-instance v2, Landroid/media/audiofx/BassBoost;

    iget v3, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-direct {v2, v6, v3}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    .line 339
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, v7}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mHTC51:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 343
    const-string v0, "EFFECT_HTC51"

    .line 344
    .restart local v0       #newEffect:Ljava/lang/String;
    goto :goto_1

    .line 346
    .end local v0           #newEffect:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-nez v2, :cond_3

    .line 348
    invoke-static {p2, p2}, Lcom/htc/video/VideoSoundEffectHelper;->updateBeatsEffectStatus(ZZ)V

    .line 349
    new-instance v2, Landroid/media/audiofx/BassEnhance;

    iget v3, p0, Lcom/htc/video/VideoSoundEffectHelper;->mAudioSessionId:I

    invoke-direct {v2, v6, v3}, Landroid/media/audiofx/BassEnhance;-><init>(II)V

    iput-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/htc/video/VideoSoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    .line 352
    const-string v0, "EFFECT_BEATS"

    .line 353
    .restart local v0       #newEffect:Ljava/lang/String;
    goto/16 :goto_1

    .line 355
    .end local v0           #newEffect:Ljava/lang/String;
    :pswitch_3
    const-string v2, "active_ap=Video;dolby_srs_eq=Dolby"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 356
    const-string v0, "EFFECT_DOLBY"

    .line 357
    .restart local v0       #newEffect:Ljava/lang/String;
    goto/16 :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
