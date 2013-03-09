.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile isTtsInitialized:Z

.field private nextUtteranceId:I

.field private tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private initializeTts()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "utteranceId"

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    goto :goto_0
.end method
