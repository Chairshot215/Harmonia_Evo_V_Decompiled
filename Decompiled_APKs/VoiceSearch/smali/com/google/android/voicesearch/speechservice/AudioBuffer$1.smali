.class Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;
.super Ljava/lang/Thread;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/AudioBuffer;-><init>(ILjava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/AudioBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;->this$0:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;->this$0:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    #calls: Lcom/google/android/voicesearch/speechservice/AudioBuffer;->captureLoop()V
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->access$000(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V

    .line 101
    return-void
.end method
