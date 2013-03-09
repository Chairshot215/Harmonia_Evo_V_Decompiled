.class final Lcom/android/camera/AnimationManager$6;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;

.field final synthetic val$orientation:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AnimationManager$6;->val$callback:Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;

    iput-object p2, p0, Lcom/android/camera/AnimationManager$6;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/camera/AnimationManager$6;->val$orientation:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AnimationManager$6;->val$callback:Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;

    iget-object v1, p0, Lcom/android/camera/AnimationManager$6;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/AnimationManager$6;->val$orientation:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;->updateOrientation(Landroid/view/View;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
