.class Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->cancel()V

    .line 386
    return-void
.end method
