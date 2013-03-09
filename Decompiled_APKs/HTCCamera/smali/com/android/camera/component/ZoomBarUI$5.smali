.class Lcom/android/camera/component/ZoomBarUI$5;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBarUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$500(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "control Zoom bar when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$600(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnBlock Capture UI - control Zoom bar and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ZoomBarUI;->isCaptureUIBlocked()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ZoomBar_ds;->setTouchPosition(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$5;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$700(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "control Zoom bar when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
