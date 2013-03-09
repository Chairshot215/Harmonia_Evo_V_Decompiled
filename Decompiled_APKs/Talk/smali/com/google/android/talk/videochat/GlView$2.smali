.class Lcom/google/android/talk/videochat/GlView$2;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlView;->onInitialSelfFrame()V
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
    .line 198
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$2;->this$0:Lcom/google/android/talk/videochat/GlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$2;->this$0:Lcom/google/android/talk/videochat/GlView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlView;->setBackgroundColor(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$2;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramesAvailable()V

    .line 205
    return-void
.end method
