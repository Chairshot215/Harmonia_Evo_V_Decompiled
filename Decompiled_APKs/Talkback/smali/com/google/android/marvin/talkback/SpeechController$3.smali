.class Lcom/google/android/marvin/talkback/SpeechController$3;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$3;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$3;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$3;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$1(Lcom/google/android/marvin/talkback/SpeechController;)Z

    move-result v1

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V
    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$2(Lcom/google/android/marvin/talkback/SpeechController;Z)V

    .line 1175
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$3;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/SpeechController;->access$3(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 1176
    return-void
.end method
