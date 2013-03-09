.class Lcom/android/camera/HTCCamera$22;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;


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

.field final synthetic val$threshold:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    iput p2, p0, Lcom/android/camera/HTCCamera$22;->val$threshold:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture(Landroid/view/MotionEvent;II)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v7}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/widget/SlidingDrawer;->getHandleArea()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge p2, v7, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge p3, v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/widget/SlidingDrawer;->setHandleSlideOpened()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    move v5, v6

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mTouchDown_X:I
    invoke-static {v5, p2}, Lcom/android/camera/HTCCamera;->access$11902(Lcom/android/camera/HTCCamera;I)I

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mTouchDown_Y:I
    invoke-static {v5, p3}, Lcom/android/camera/HTCCamera;->access$12002(Lcom/android/camera/HTCCamera;I)I

    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_X:I
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$11900(Lcom/android/camera/HTCCamera;)I

    move-result v7

    sub-int v2, v7, p2

    iget-object v7, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_Y:I
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$12000(Lcom/android/camera/HTCCamera;)I

    move-result v7

    sub-int v3, v7, p3

    mul-int v7, v2, v2

    mul-int v8, v3, v3

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v7, p0, Lcom/android/camera/HTCCamera$22;->val$threshold:I

    int-to-double v7, v7

    cmpl-double v7, v0, v7

    if-lez v7, :cond_3

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleOpened()V

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_X:I
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11900(Lcom/android/camera/HTCCamera;)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_Y:I
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12000(Lcom/android/camera/HTCCamera;)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_X:I
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11900(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v2, v5, p2

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchDown_Y:I
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12000(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v3, v5, p3

    mul-int v5, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v5, v7

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v5, p0, Lcom/android/camera/HTCCamera$22;->val$threshold:I

    int-to-double v7, v5

    cmpg-double v5, v0, v7

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
