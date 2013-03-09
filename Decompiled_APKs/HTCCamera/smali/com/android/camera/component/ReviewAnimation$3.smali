.class Lcom/android/camera/component/ReviewAnimation$3;
.super Ljava/lang/Object;
.source "ReviewAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimation;->showReviewAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimation$3;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation$3;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimation;->access$300(Lcom/android/camera/component/ReviewAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation$3;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimation;->access$300(Lcom/android/camera/component/ReviewAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation$3;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimation;->access$300(Lcom/android/camera/component/ReviewAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

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
