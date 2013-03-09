.class Lcom/google/android/marvin/talkback/VolumeMonitor$2;
.super Ljava/lang/Object;
.source "VolumeMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/VolumeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$2;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$2;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    #getter for: Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$1(Lcom/google/android/marvin/talkback/VolumeMonitor;)Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->releaseControl()V

    .line 324
    return-void
.end method
