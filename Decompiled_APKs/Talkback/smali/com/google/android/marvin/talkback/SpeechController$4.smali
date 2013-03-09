.class Lcom/google/android/marvin/talkback/SpeechController$4;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$4;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$4;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/SpeechController;->access$3(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->onTtsInitialized(I)V

    .line 1188
    return-void
.end method
