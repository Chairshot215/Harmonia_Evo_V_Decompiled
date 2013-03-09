.class Lcom/google/android/marvin/talkback/SpeechController$2;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$2;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$2;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z
    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$0(Lcom/google/android/marvin/talkback/SpeechController;Z)V

    .line 1164
    return-void
.end method
