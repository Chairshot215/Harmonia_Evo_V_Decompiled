.class Lcom/android/facelock/FaceLockService$4;
.super Ljava/lang/Object;
.source "FaceLockService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/FaceLockService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/FaceLockService;


# direct methods
.method constructor <init>(Lcom/android/facelock/FaceLockService;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 637
    invoke-static {}, Lcom/android/facelock/FaceLockService;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mPreviewShowing:Z
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$800(Lcom/android/facelock/FaceLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 642
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 643
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$1100(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/facelock/FaceLockService;->access$1000(Lcom/android/facelock/FaceLockService;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/facelock/FaceLockService$4;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :cond_0
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
