.class public Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;
.super Ljava/lang/Object;
.source "AudioManagerCompatUtils.java"


# static fields
.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field private static final CLASS_OnAudioFocusChangeListener:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EXTRA_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final MASTER_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field private static final METHOD_abandonAudioFocus:Ljava/lang/reflect/Method; = null

.field private static final METHOD_forceVolumeControlStream:Ljava/lang/reflect/Method; = null

.field private static final METHOD_requestAudioFocus:Ljava/lang/reflect/Method; = null

.field public static final STREAM_DTMF:I = 0x8

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    const-string v0, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->CLASS_OnAudioFocusChangeListener:Ljava/lang/Class;

    .line 28
    const-class v0, Landroid/media/AudioManager;

    .line 29
    const-string v1, "requestAudioFocus"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->CLASS_OnAudioFocusChangeListener:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 28
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_requestAudioFocus:Ljava/lang/reflect/Method;

    .line 31
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "abandonAudioFocus"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->CLASS_OnAudioFocusChangeListener:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 30
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_abandonAudioFocus:Ljava/lang/reflect/Method;

    .line 33
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "forceVolumeControlStream"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 32
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_forceVolumeControlStream:Ljava/lang/reflect/Method;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static abandonAudioFocus(Landroid/media/AudioManager;Ljava/lang/Object;)I
    .locals 4
    .parameter "receiver"
    .parameter "l"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_abandonAudioFocus:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 160
    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static forceVolumeControlStream(Landroid/media/AudioManager;I)V
    .locals 5
    .parameter "receiver"
    .parameter "streamType"

    .prologue
    .line 131
    const/4 v0, 0x0

    sget-object v1, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_forceVolumeControlStream:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public static requestAudioFocus(Landroid/media/AudioManager;Ljava/lang/Object;II)I
    .locals 5
    .parameter "receiver"
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->METHOD_requestAudioFocus:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 150
    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
