.class Lcom/android/facelock/FaceLockService$5;
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
    .line 655
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$5;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$5;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$1200(Lcom/android/facelock/FaceLockService;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/facelock/FaceLockService$5;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLockFadeIn:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$1200(Lcom/android/facelock/FaceLockService;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 660
    :cond_0
    invoke-static {}, Lcom/android/facelock/FaceLockService;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 661
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 662
    .local v0, val:F
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$5;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mInfoText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$1300(Lcom/android/facelock/FaceLockService;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 663
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$5;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mCancelButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$1400(Lcom/android/facelock/FaceLockService;)Landroid/widget/ImageButton;

    move-result-object v1

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 664
    monitor-exit v2

    .line 665
    return-void

    .line 664
    .end local v0           #val:F
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
