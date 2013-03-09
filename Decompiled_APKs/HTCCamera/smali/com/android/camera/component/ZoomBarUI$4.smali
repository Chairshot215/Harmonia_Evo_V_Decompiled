.class Lcom/android/camera/component/ZoomBarUI$4;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;


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

    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/view/View;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$200(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$200(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBarUI;->isCaptureUIBlocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/HTCCamera;->changeZoom(I)V

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$4;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBarUI;->sendShowZoomProgressMessage()V

    goto :goto_0
.end method
