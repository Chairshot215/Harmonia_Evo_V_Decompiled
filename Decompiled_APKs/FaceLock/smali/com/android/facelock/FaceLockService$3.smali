.class Lcom/android/facelock/FaceLockService$3;
.super Ljava/lang/Object;
.source "FaceLockService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 626
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$3;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 627
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$3;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$700(Lcom/android/facelock/FaceLockService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 630
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 631
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 632
    return-void
.end method
