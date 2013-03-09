.class Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TutorialSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    .line 153
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method

.method private final parseId(Ljava/lang/String;)I
    .locals 4
    .parameter "utteranceId"

    .prologue
    const/4 v2, -0x1

    .line 198
    const-string v3, "TUTORIAL_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    :goto_0
    return v2

    .line 202
    :cond_0
    const-string v3, "TUTORIAL_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, strId:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 5
    .parameter "utteranceId"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->parseId(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, id:I
    if-gez v0, :cond_1

    .line 169
    invoke-static {}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse utterance ID from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$2(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->postDone(I)V

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, wasLastUtterance:Z
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$3(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$4(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mLastUtteranceId:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$5(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x1

    .line 177
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mHandler:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$2(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->postDoneSpeaking()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 162
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 157
    return-void
.end method
