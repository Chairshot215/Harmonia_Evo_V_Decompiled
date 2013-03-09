.class Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;
.super Ljava/lang/Object;
.source "ScreenshotView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/ScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideAfterEndAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ScreenshotView;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/ScreenshotView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/finsky/layout/ScreenshotView;->access$200(Lcom/google/android/finsky/layout/ScreenshotView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 117
    return-void
.end method
