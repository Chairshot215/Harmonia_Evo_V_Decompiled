.class Lcom/android/camera/rotate/RotateToast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "RotateToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Lcom/android/camera/rotate/RotateToast;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateToast;)V
    .locals 3

    const/4 v2, -0x2

    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v1, Lcom/android/camera/rotate/RotateToast$TN$1;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast$TN$1;-><init>(Lcom/android/camera/rotate/RotateToast$TN;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/camera/rotate/RotateToast$TN$2;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast$TN$2;-><init>(Lcom/android/camera/rotate/RotateToast$TN;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mHide:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/rotate/RotateToast;->bShowing:Z
    invoke-static {v1, v2}, Lcom/android/camera/rotate/RotateToast;->access$102(Lcom/android/camera/rotate/RotateToast;Z)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RotateToast"

    const-string v2, "Exception occurred while hiding toast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleShow()V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateToast$TN;->handleHide()V

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    iput-object v3, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v1, v2, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_1
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    #getter for: Lcom/android/camera/rotate/RotateToast;->toast_orientation:I
    invoke-static {v2}, Lcom/android/camera/rotate/RotateToast;->access$000(Lcom/android/camera/rotate/RotateToast;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_ScreenOrientation(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    #getter for: Lcom/android/camera/rotate/RotateToast;->toast_orientation:I
    invoke-static {v2}, Lcom/android/camera/rotate/RotateToast;->access$000(Lcom/android/camera/rotate/RotateToast;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    :goto_0
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RotateToast"

    const-string v3, "Exception occurred while showing toast"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "RotateToast"

    const-string v3, "Exception occurred while showing toast"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateToast$TN;->handleHide()V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
