.class Lcom/google/android/talk/videochat/VideoChatActivity$4;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->startTextOverlayFadeOut()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 644
    :cond_0
    return-void
.end method
