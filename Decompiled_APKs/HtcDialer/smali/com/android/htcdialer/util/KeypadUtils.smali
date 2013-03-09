.class public Lcom/android/htcdialer/util/KeypadUtils;
.super Ljava/lang/Object;
.source "KeypadUtils.java"


# static fields
.field public static final EIGHT:I = 0x8

.field public static final FIVE:I = 0x5

.field public static final FOUR:I = 0x4

.field public static final KEY_MAP:[I = null

.field public static final NINE:I = 0x9

.field public static final ONE:I = 0x1

.field public static final PAUSE:I = 0xe

.field public static final PLUS:I = 0xc

.field public static final POUND:I = 0xb

.field public static final SEARCH_PATTERN:[Ljava/lang/String; = null

.field public static final SEVEN:I = 0x7

.field public static final SIX:I = 0x6

.field public static final STAR:I = 0xd

.field public static final START_1:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_VIBRATE_BY_SETTING:Z = false

.field private static final TAG:Ljava/lang/String; = "KeypadUtility"

.field public static final THREE:I = 0x3

.field private static final TONE_RELATIVE_VOLUME:I = 0x3c

.field public static final TWO:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final VIBRATE_DURATION:I = 0x0

.field public static final WAIT:I = 0xf

.field public static final ZERO:I


# instance fields
.field private mToneEnabled:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVibrateEnabled:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v2, 0x1e

    const/16 v6, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "0:"

    aput-object v4, v3, v1

    const-string v4, "1:"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "2:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "3:"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "4:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "5:"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "6:"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "7:"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "8:"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "9:"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "10:"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "11:"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "12:"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "13:"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "14:"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, ""

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/htcdialer/util/KeypadUtils;->SEARCH_PATTERN:[Ljava/lang/String;

    .line 67
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/htcdialer/util/KeypadUtils;->KEY_MAP:[I

    .line 83
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v3

    const/high16 v4, 0x4000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/util/KeypadUtils;->SUPPORT_VIBRATE_BY_SETTING:Z

    .line 102
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1f

    :goto_1
    sput v0, Lcom/android/htcdialer/util/KeypadUtils;->VIBRATE_DURATION:I

    return-void

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0

    .line 102
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x18

    goto :goto_1

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    .line 67
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGeneratorLock:Ljava/lang/Object;

    return-void
.end method

.method private initToneGenerator()V
    .locals 5

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 149
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x3c

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 158
    :cond_1
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "KeypadUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initVibrator()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrator:Landroid/os/Vibrator;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrateEnabled:Z

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public keyPress(Landroid/widget/TextView;I)V
    .locals 5
    .parameter "view"
    .parameter "keycode"

    .prologue
    .line 223
    if-eqz p1, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, input:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 228
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 230
    .local v3, pos:I
    if-gez v3, :cond_0

    .line 231
    const/4 v3, 0x0

    .line 234
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 280
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    invoke-interface {v0, v3, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 291
    .end local v0           #edit:Landroid/text/Editable;
    .end local v2           #input:Ljava/lang/CharSequence;
    .end local v3           #pos:I
    :cond_1
    return-void

    .line 236
    .restart local v0       #edit:Landroid/text/Editable;
    .restart local v2       #input:Ljava/lang/CharSequence;
    .restart local v3       #pos:I
    :sswitch_0
    const-string v2, "0"

    .line 237
    goto :goto_0

    .line 239
    :sswitch_1
    const-string v2, "1"

    .line 240
    goto :goto_0

    .line 242
    :sswitch_2
    const-string v2, "2"

    .line 243
    goto :goto_0

    .line 245
    :sswitch_3
    const-string v2, "3"

    .line 246
    goto :goto_0

    .line 248
    :sswitch_4
    const-string v2, "4"

    .line 249
    goto :goto_0

    .line 251
    :sswitch_5
    const-string v2, "5"

    .line 252
    goto :goto_0

    .line 254
    :sswitch_6
    const-string v2, "6"

    .line 255
    goto :goto_0

    .line 257
    :sswitch_7
    const-string v2, "7"

    .line 258
    goto :goto_0

    .line 260
    :sswitch_8
    const-string v2, "8"

    .line 261
    goto :goto_0

    .line 263
    :sswitch_9
    const-string v2, "9"

    .line 264
    goto :goto_0

    .line 266
    :sswitch_a
    const-string v2, "*"

    .line 267
    goto :goto_0

    .line 269
    :sswitch_b
    const-string v2, "#"

    .line 270
    goto :goto_0

    .line 272
    :sswitch_c
    const-string v2, "+"

    .line 273
    goto :goto_0

    .line 275
    :sswitch_d
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 276
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x10 -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x43 -> :sswitch_d
        0x51 -> :sswitch_c
    .end sparse-switch
.end method

.method public playTone(I)V
    .locals 1
    .parameter "tone"

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/util/KeypadUtils;->playTone(II)V

    .line 177
    return-void
.end method

.method public playTone(II)V
    .locals 4
    .parameter "tone"
    .parameter "duration"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->isBTDockConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 192
    const-string v0, "KeypadUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 200
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 201
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public releaseToneGenerator()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 172
    :cond_0
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setToneEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneEnabled:Z

    .line 112
    return-void
.end method

.method public stopTone()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "KeypadUtility"

    const-string v2, "mToneStopper: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/htcdialer/util/KeypadUtils;->initToneGenerator()V

    .line 128
    invoke-direct {p0}, Lcom/android/htcdialer/util/KeypadUtils;->initVibrator()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/util/KeypadUtils;->updateVibrateEnabled(Landroid/content/ContentResolver;)V

    .line 130
    return-void
.end method

.method public updateVibrateEnabled(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    const/4 v0, 0x0

    .line 120
    sget-boolean v1, Lcom/android/htcdialer/util/KeypadUtils;->SUPPORT_VIBRATE_BY_SETTING:Z

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "haptic_feedback_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrateEnabled:Z

    .line 124
    :cond_1
    return-void
.end method

.method public declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrateEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrator:Landroid/os/Vibrator;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/util/KeypadUtils;->mVibrator:Landroid/os/Vibrator;

    sget v1, Lcom/android/htcdialer/util/KeypadUtils;->VIBRATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
