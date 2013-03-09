.class Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$1;
.super Ljava/lang/Object;
.source "TutorialSpeechController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    #calls: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->readQueuedSpeech()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$0(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    .line 150
    return-void
.end method
