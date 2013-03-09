.class public Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils$EngineCompatUtils;
.super Ljava/lang/Object;
.source "TextToSpeechCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineCompatUtils"
.end annotation


# static fields
.field public static final INTENT_ACTION_TTS_SERVICE:Ljava/lang/String; = "android.intent.action.TTS_SERVICE"

.field public static final KEY_PARAM_PAN:Ljava/lang/String; = "pan"

.field public static final KEY_PARAM_VOLUME:Ljava/lang/String; = "volume"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method
