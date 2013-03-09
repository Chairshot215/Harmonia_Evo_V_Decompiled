.class Lcom/google/android/talk/videochat/VideoChatActivity$13;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->setupOverlayClickLogic()V
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
    .line 1927
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1930
    const/4 v0, 0x0

    .line 1931
    .local v0, dismissedTextOverlay:Z
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->startTextOverlayFadeOut()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1933
    const/4 v0, 0x1

    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v1

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$4500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1937
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v1

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1938
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1939
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1944
    :cond_1
    :goto_0
    monitor-exit v2

    .line 1945
    return-void

    .line 1940
    :cond_2
    if-nez v0, :cond_1

    .line 1941
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$13;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0

    .line 1944
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
