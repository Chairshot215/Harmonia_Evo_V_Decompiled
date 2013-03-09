.class Lcom/android/camera/HTCCamera$12;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/component/HwCameraSwitchButton;->hasButton()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-boolean v2, v2, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    if-eqz v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "SwitchMenuOpen failed, mMenuIsOpening is true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iput-boolean v1, v2, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/widget/SwitchItemListView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/android/camera/widget/SwitchItemListView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v2, v3}, Lcom/android/camera/HTCCamera;->access$11302(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    const v4, 0x7f0a0003

    const v5, 0x7f02015c

    invoke-static {v3, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "HTCCamera"

    const-string v4, "not support second cam,switch mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_4

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v2, v1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method
