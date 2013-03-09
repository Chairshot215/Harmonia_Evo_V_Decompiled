.class Lcom/google/android/tts/TtsConfigImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "TtsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/TtsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/TtsConfigImpl;


# direct methods
.method constructor <init>(Lcom/google/android/tts/TtsConfigImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/tts/TtsConfigImpl$2;->this$0:Lcom/google/android/tts/TtsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl$2;->this$0:Lcom/google/android/tts/TtsConfigImpl;

    #getter for: Lcom/google/android/tts/TtsConfigImpl;->mUpdateExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/android/tts/TtsConfigImpl;->access$100(Lcom/google/android/tts/TtsConfigImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/tts/TtsConfigImpl$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/tts/TtsConfigImpl$2$1;-><init>(Lcom/google/android/tts/TtsConfigImpl$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 288
    return-void
.end method
