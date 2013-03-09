.class Lcom/google/android/talk/videochat/VideoChatActivity$14;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1948
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1951
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 1952
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1953
    .local v3, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1955
    .local v4, y:I
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v5

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$4500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1956
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v5

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1957
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/GlView;->getRemoteFrameRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1958
    .local v0, remoteRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1960
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v5

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->leaveSpecialEffectsMode()Z
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    .line 1961
    monitor-exit v6

    .line 1982
    .end local v0           #remoteRect:Landroid/graphics/Rect;
    .end local v3           #x:I
    .end local v4           #y:I
    :goto_0
    return v2

    .line 1965
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/GlView;->getSelfFrameRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1966
    .local v1, selfRect:Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1968
    const/4 v2, 0x0

    .line 1969
    .local v2, touchConsumed:Z
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v5

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->areAnyEffectsAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1971
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v5

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->enterSpecialEffectsMode()V
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3400(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    .line 1972
    const/4 v2, 0x1

    .line 1974
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/GlView;->getEffectsController()Lcom/google/android/talk/videochat/EffectsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/EffectsController;->maxImageStabilizationEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1975
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->sendImageStabilizationReset()V
    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6500(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1976
    const/4 v2, 0x1

    .line 1978
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 1980
    .end local v1           #selfRect:Landroid/graphics/Rect;
    .end local v2           #touchConsumed:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #selfRect:Landroid/graphics/Rect;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1982
    .end local v1           #selfRect:Landroid/graphics/Rect;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
