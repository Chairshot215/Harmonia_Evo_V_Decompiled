.class public Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;
.super Ljava/lang/Object;
.source "TextToSpeechCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils$EngineCompatUtils;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_LLS:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_setEngineByPackageName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    const-class v0, Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    const-class v2, Landroid/speech/tts/TextToSpeech$OnInitListener;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 29
    invoke-static {v0, v1}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->CONSTRUCTOR_LLS:Ljava/lang/reflect/Constructor;

    .line 32
    const-class v0, Landroid/speech/tts/TextToSpeech;

    const-string v1, "setEngineByPackageName"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    .line 31
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->METHOD_setEngineByPackageName:Ljava/lang/reflect/Method;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static newTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)Landroid/speech/tts/TextToSpeech;
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "engine"

    .prologue
    .line 51
    sget-object v1, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->CONSTRUCTOR_LLS:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 52
    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 51
    invoke-static {v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech;

    .line 54
    .local v0, result:Landroid/speech/tts/TextToSpeech;
    if-eqz v0, :cond_0

    .line 58
    .end local v0           #result:Landroid/speech/tts/TextToSpeech;
    :goto_0
    return-object v0

    .restart local v0       #result:Landroid/speech/tts/TextToSpeech;
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .end local v0           #result:Landroid/speech/tts/TextToSpeech;
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    goto :goto_0
.end method

.method public static setEngineByPackageName(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)I
    .locals 4
    .parameter "receiver"
    .parameter "enginePackageName"

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->METHOD_setEngineByPackageName:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 62
    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
