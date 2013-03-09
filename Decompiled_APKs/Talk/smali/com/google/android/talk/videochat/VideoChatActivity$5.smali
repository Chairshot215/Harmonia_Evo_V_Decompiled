.class Lcom/google/android/talk/videochat/VideoChatActivity$5;
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
    .line 685
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$5;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$5;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$5;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v0

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$5;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 692
    :cond_0
    return-void
.end method
