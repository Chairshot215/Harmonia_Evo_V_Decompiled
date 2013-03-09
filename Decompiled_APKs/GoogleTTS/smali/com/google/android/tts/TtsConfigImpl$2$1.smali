.class Lcom/google/android/tts/TtsConfigImpl$2$1;
.super Ljava/lang/Object;
.source "TtsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/TtsConfigImpl$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/tts/TtsConfigImpl$2;


# direct methods
.method constructor <init>(Lcom/google/android/tts/TtsConfigImpl$2;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/tts/TtsConfigImpl$2$1;->this$1:Lcom/google/android/tts/TtsConfigImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl$2$1;->this$1:Lcom/google/android/tts/TtsConfigImpl$2;

    iget-object v0, v0, Lcom/google/android/tts/TtsConfigImpl$2;->this$0:Lcom/google/android/tts/TtsConfigImpl;

    #calls: Lcom/google/android/tts/TtsConfigImpl;->updateCache()V
    invoke-static {v0}, Lcom/google/android/tts/TtsConfigImpl;->access$000(Lcom/google/android/tts/TtsConfigImpl;)V

    .line 286
    return-void
.end method
