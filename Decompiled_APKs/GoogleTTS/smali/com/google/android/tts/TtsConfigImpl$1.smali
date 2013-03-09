.class Lcom/google/android/tts/TtsConfigImpl$1;
.super Ljava/lang/Object;
.source "TtsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/TtsConfigImpl;-><init>(Landroid/content/Context;)V
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
    .line 73
    iput-object p1, p0, Lcom/google/android/tts/TtsConfigImpl$1;->this$0:Lcom/google/android/tts/TtsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl$1;->this$0:Lcom/google/android/tts/TtsConfigImpl;

    #calls: Lcom/google/android/tts/TtsConfigImpl;->updateCache()V
    invoke-static {v0}, Lcom/google/android/tts/TtsConfigImpl;->access$000(Lcom/google/android/tts/TtsConfigImpl;)V

    .line 77
    return-void
.end method
