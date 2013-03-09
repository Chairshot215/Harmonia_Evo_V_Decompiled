.class Lcom/google/android/marvin/talkback/VolumeMonitor$1;
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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$1;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$1;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    #calls: Lcom/google/android/marvin/talkback/VolumeMonitor;->releaseControl()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$0(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    .line 313
    return-void
.end method
