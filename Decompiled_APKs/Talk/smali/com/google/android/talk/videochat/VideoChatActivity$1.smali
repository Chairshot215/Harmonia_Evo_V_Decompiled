.class Lcom/google/android/talk/videochat/VideoChatActivity$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->transitionChromeToConnected(Z)V
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
    .line 363
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$100(Lcom/google/android/talk/videochat/VideoChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    return-void

    .line 367
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
