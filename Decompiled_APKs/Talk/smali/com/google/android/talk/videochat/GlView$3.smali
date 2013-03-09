.class Lcom/google/android/talk/videochat/GlView$3;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlView;->switchCamera(Lcom/google/android/talk/videochat/CameraTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/GlView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$3;->this$0:Lcom/google/android/talk/videochat/GlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$3;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramesUnavailable()V

    .line 666
    return-void
.end method
