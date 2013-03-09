.class Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;
.super Ljava/lang/Object;
.source "TutorialSpeechController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;,
        Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final UTTERANCE_PREFIX:Ljava/lang/String; = "TUTORIAL_"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mLastUtteranceId:Ljava/lang/String;

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mQueuedIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedText:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeechParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;-><init>(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mSpeechParams:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;

    .line 146
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 153
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;-><init>(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 55
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 57
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->readQueuedSpeech()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTtsReady:Z

    return v0
.end method

.method static synthetic access$8(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->speakImmediately(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private readQueuedSpeech()V
    .locals 4

    .prologue
    .line 131
    iget-object v3, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    monitor-enter v3

    .line 132
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTtsReady:Z

    .line 131
    monitor-exit v3

    .line 144
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, queuedText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    .local v0, queuedId:I
    invoke-direct {p0, v1, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->speakImmediately(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-virtual {v2, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->postDone(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->resetTtsEngine()V

    goto :goto_0

    .line 131
    .end local v0           #queuedId:I
    .end local v1           #queuedText:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetTtsEngine()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 103
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 105
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->postDone(I)V

    goto :goto_0
.end method

.method private speakImmediately(Ljava/lang/String;I)Z
    .locals 8
    .parameter "text"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TUTORIAL_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, utteranceId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, wasFirstUtterance:Z
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    monitor-enter v4

    .line 114
    :try_start_0
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 118
    :cond_0
    iput-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mSpeechParams:Ljava/util/HashMap;

    const-string v6, "utteranceId"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mSpeechParams:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    .line 113
    .local v0, result:I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v2, :cond_1

    .line 124
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->postStartSpeaking()V

    .line 127
    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return v3

    .line 113
    .end local v0           #result:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 127
    .restart local v0       #result:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->interrupt()V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->resetTtsEngine()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->interrupt()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 85
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 88
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "text"
    .parameter "id"
    .parameter "shouldRepeat"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->speak(Ljava/lang/String;IZ)V

    .line 66
    return-void
.end method
