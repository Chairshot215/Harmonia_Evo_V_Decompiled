.class Lcom/google/android/videochat/Libjingle;
.super Ljava/lang/Object;
.source "Libjingle.java"


# static fields
.field private static final ANDROID_SETTINGS_KEYS_MAP:[[Ljava/lang/String; = null

.field public static final AUDIO_LEVELS_OP:I = 0x4

.field public static final AVAILABLE:I = 0x1

.field public static final CALL_FLAG_AUDIO_ONLY:I = 0x1

.field public static final CALL_FLAG_MULTI_USER:I = 0x2

.field public static final CALL_STATE_CHANGED_OP:I = 0x1

.field public static final HAS_CAMERA_V1:I = 0x8

.field public static final HAS_VIDEO_V1:I = 0x4

.field public static final HAS_VOICE_V1:I = 0x2

.field private static final LIBJINGLE_LS_ERROR:I = 0x4

.field private static final LIBJINGLE_LS_INFO:I = 0x2

.field private static final LIBJINGLE_LS_VERBOSE:I = 0x1

.field private static final LIBJINGLE_LS_WARNING:I = 0x3

.field private static final LIBJINGLE_VIDEO_MAX_FRAMERATE:Ljava/lang/String; = "VIDEO_MAX_FRAMERATE"

.field private static final LIBJINGLE_VIDEO_MAX_HEIGHT:Ljava/lang/String; = "VIDEO_MAX_HEIGHT"

.field private static final LIBJINGLE_VIDEO_MAX_WIDTH:Ljava/lang/String; = "VIDEO_MAX_WIDTH"

.field public static final MEDIA_SOURCES_OP:I = 0x3

.field public static final STATS_OP:I = 0x2

.field public static final STR1_KEY:Ljava/lang/String; = "str1"

.field public static final STR2_KEY:Ljava/lang/String; = "str2"

.field private static final TAG:Ljava/lang/String; = "vclib:Libjingle"

.field public static final UNAVAILABLE:I

.field public static final XMPP_SESSION_STANZA_OP:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    const-string v1, "videochat_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/google/android/videochat/Libjingle;->nativeInit()V

    .line 48
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->refreshTalkLogLevel()I

    move-result v0

    .line 49
    .local v0, logLevelForTalk:I
    if-ne v0, v8, :cond_0

    .line 50
    const/4 v0, 0x5

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/google/android/videochat/Libjingle;->nativeSetLoggingLevel(I)V

    .line 96
    const/16 v1, 0x10

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "gtalk_vc_allow_nondefault_networks"

    aput-object v3, v2, v5

    const-string v3, "ALLOW_NONDEFAULT_NETWORKS"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "gtalk_vc_blocked_interface_names"

    aput-object v3, v2, v5

    const-string v3, "BLOCK_INTERFACE_NAMES"

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "gtalk_vc_enable_echo_cancellation"

    aput-object v3, v2, v5

    const-string v3, "ENABLE_ECHO_CANCELLATION"

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_enable_auto_gain_control"

    aput-object v4, v3, v5

    const-string v4, "ENABLE_AUTO_GAIN_CONTROL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "gtalk_vc_enable_noise_suppression"

    aput-object v3, v2, v5

    const-string v3, "ENABLE_NOISE_SUPPRESSION"

    aput-object v3, v2, v6

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_ec_comfort_noise_generation"

    aput-object v4, v3, v5

    const-string v4, "EC_COMFORT_NOISE_GENERATION"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_agc_mode"

    aput-object v4, v3, v5

    const-string v4, "AGC_MODE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_agc_config_target_level"

    aput-object v4, v3, v5

    const-string v4, "AGC_CONFIG_TARGET_LEVEL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_agc_config_comp_gain"

    aput-object v4, v3, v5

    const-string v4, "AGC_CONFIG_COMP_GAIN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_agc_config_limiter_enable"

    aput-object v4, v3, v5

    const-string v4, "AGC_CONFIG_LIMITER_ENABLE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_enable_rx_auto_gain_control"

    aput-object v4, v3, v5

    const-string v4, "ENABLE_RX_AUTO_GAIN_CONTROL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_rx_agc_config_target_level"

    aput-object v4, v3, v5

    const-string v4, "RX_AGC_CONFIG_TARGET_LEVEL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_rx_agc_config_comp_gain"

    aput-object v4, v3, v5

    const-string v4, "RX_AGC_CONFIG_COMP_GAIN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_rx_agc_config_limiter_enable"

    aput-object v4, v3, v5

    const-string v4, "RX_AGC_CONFIG_LIMITER_ENABLE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_audio_record_sampling_rate"

    aput-object v4, v3, v5

    const-string v4, "AUDIO_RECORDING_SAMPLING_RATE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gtalk_vc_audio_playback_sampling_rate"

    aput-object v4, v3, v5

    const-string v4, "AUDIO_PLAYBACK_SAMPLING_RATE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/videochat/Libjingle;->ANDROID_SETTINGS_KEYS_MAP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/videochat/Libjingle;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/google/android/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method private static dispatchNativeEvent(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "str1"
    .parameter "str2"
    .parameter "obj1"

    .prologue
    .line 396
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/Libjingle;

    .line 402
    .local v1, instance:Lcom/google/android/videochat/Libjingle;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/google/android/videochat/Libjingle;->mNativeContext:I

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, v1, Lcom/google/android/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, p2, p3, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 405
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 406
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "str1"

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v3, "str2"

    check-cast p5, Ljava/lang/String;

    .end local p5
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 411
    iget-object v3, v1, Lcom/google/android/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getLibjingleLogLevel(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 143
    goto :goto_0

    :cond_2
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public static load()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 416
    const-string v0, "vclib:Libjingle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private final native nativeAcceptCall(Ljava/lang/String;)V
.end method

.method private final native nativeCall(Ljava/lang/String;I)V
.end method

.method private final native nativeDeclineCall(Ljava/lang/String;)V
.end method

.method private final native nativeEndCall(Ljava/lang/String;)V
.end method

.method private final native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private final native nativeInitializeRenderer()V
.end method

.method private final native nativeIsSecure(Ljava/lang/String;)Z
.end method

.method private final native nativeIsVideo(Ljava/lang/String;)Z
.end method

.method private final native nativePrepareEngine(Ljava/lang/String;)V
.end method

.method private final native nativeProcessSessionStanza(Ljava/lang/String;)V
.end method

.method private final native nativeProcessSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native nativeRelease()V
.end method

.method private final native nativeReleaseEngine()V
.end method

.method private final native nativeRequestVideoViews([Lcom/google/android/videochat/VideoViewRequest;)V
.end method

.method private final native nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native nativeSetJingleInfoStanza(Ljava/lang/String;)V
.end method

.method private static final native nativeSetLoggingLevel(I)V
.end method

.method private final native nativeSetSelfViewFrameParameters(ZIII)V
.end method

.method private final native nativeSetup(Ljava/lang/Object;Ljava/lang/Object;II)V
.end method

.method private final native nativeUpdateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public acceptCall(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeAcceptCall(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public final native bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V
.end method

.method public declineCall(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeDeclineCall(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/videochat/Libjingle;->nativeFinalize()V

    .line 213
    return-void
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 149
    iget-boolean v9, p0, Lcom/google/android/videochat/Libjingle;->mInitialized:Z

    if-eqz v9, :cond_0

    .line 150
    const-string v9, "init: already initialized"

    invoke-direct {p0, v9}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 154
    :cond_0
    iput-boolean v11, p0, Lcom/google/android/videochat/Libjingle;->mInitialized:Z

    .line 158
    const-string v9, "init: call nativeSetup"

    invoke-direct {p0, v9}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 160
    const-string v9, "Talk.videoLogging"

    invoke-direct {p0, v9}, Lcom/google/android/videochat/Libjingle;->getLibjingleLogLevel(Ljava/lang/String;)I

    move-result v8

    .line 161
    .local v8, videoLogging:I
    const-string v9, "Talk.audioLogging"

    invoke-direct {p0, v9}, Lcom/google/android/videochat/Libjingle;->getLibjingleLogLevel(Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, audioLogging:I
    iget-object v9, p0, Lcom/google/android/videochat/Libjingle;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v9, v10, v8, v1}, Lcom/google/android/videochat/Libjingle;->nativeSetup(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 165
    iget-object v9, p0, Lcom/google/android/videochat/Libjingle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 166
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v0, Lcom/google/android/videochat/Libjingle;->ANDROID_SETTINGS_KEYS_MAP:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v5, v0, v3

    .line 167
    .local v5, key:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v2, v9}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 169
    aget-object v9, v5, v11

    invoke-direct {p0, v9, v7}, Lcom/google/android/videochat/Libjingle;->nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v5           #key:[Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->getIncomingVideoSpec()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v4

    .line 173
    .local v4, incomingVideo:Lcom/google/android/videochat/VideoSpecification;
    const-string v9, "VIDEO_MAX_WIDTH"

    invoke-virtual {v4}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v10

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/videochat/Libjingle;->nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v9, "VIDEO_MAX_HEIGHT"

    invoke-virtual {v4}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v10

    iget v10, v10, Lcom/google/android/videochat/Size;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/videochat/Libjingle;->nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v9, "VIDEO_MAX_FRAMERATE"

    invoke-virtual {v4}, Lcom/google/android/videochat/VideoSpecification;->getFrameRate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/videochat/Libjingle;->nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeRenderer()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "vclib:Libjingle"

    const-string v1, "initializeRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/google/android/videochat/Libjingle;->nativeInitializeRenderer()V

    .line 303
    return-void
.end method

.method public initiateCall(Ljava/lang/String;I)V
    .locals 0
    .parameter "remoteJid"
    .parameter "flags"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/Libjingle;->nativeCall(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/videochat/Libjingle;->mInitialized:Z

    return v0
.end method

.method public isSecure(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeIsSecure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideo(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeIsVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "localBareJid"

    .prologue
    .line 225
    const-string v0, "prepare engine"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativePrepareEngine(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public processIncomingStanza(Ljava/lang/String;)V
    .locals 0
    .parameter "stanza"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeProcessSessionStanza(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public processIqStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "original"
    .parameter "response"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/Libjingle;->nativeProcessSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/videochat/Libjingle;->mInitialized:Z

    if-nez v0, :cond_0

    .line 184
    const-string v0, "release: already released"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/Libjingle;->mInitialized:Z

    .line 190
    const-string v0, "Release: call nativeRelease"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/google/android/videochat/Libjingle;->nativeRelease()V

    goto :goto_0
.end method

.method public releaseEngine()V
    .locals 1

    .prologue
    .line 233
    const-string v0, "release engine"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/google/android/videochat/Libjingle;->nativeReleaseEngine()V

    .line 235
    return-void
.end method

.method public requestVideoViews([Lcom/google/android/videochat/VideoViewRequest;)V
    .locals 0
    .parameter "requests"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeRequestVideoViews([Lcom/google/android/videochat/VideoViewRequest;)V

    .line 277
    return-void
.end method

.method public setDeviceHasEC(Z)V
    .locals 2
    .parameter "deviceEC"

    .prologue
    .line 216
    const-string v1, "DEVICE_EC_SUPPORTED"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/videochat/Libjingle;->nativeSetGServicesOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void

    .line 216
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setJingleInfoStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "jingleInfoStanza"

    .prologue
    .line 306
    const-string v0, "vclib:Libjingle"

    const-string v1, "setJingleInfoStanza"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeSetJingleInfoStanza(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public setSelfViewFrameParameters(ZIII)V
    .locals 0
    .parameter "flip"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/videochat/Libjingle;->nativeSetSelfViewFrameParameters(ZIII)V

    .line 298
    return-void
.end method

.method public terminateCall(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/videochat/Libjingle;->nativeEndCall(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public final native unbindRenderer(I)V
.end method

.method public updateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"
    .parameter "sessionid"

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/Libjingle;->nativeUpdateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
