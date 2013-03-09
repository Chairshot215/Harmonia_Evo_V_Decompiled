.class Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReLayout"
.end annotation


# static fields
.field static final ACTION_NAME:Ljava/lang/String; = "ReLayout"


# instance fields
.field private isLayoutRequest:Z

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    const-string v0, "ReLayout"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysNeedRenderAfterProcess(Z)V

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    return-void
.end method

.method private processLayoutRequest()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(II)V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2, v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    move-object/from16 v1, v16

    check-cast v1, Lcom/htc/sunny2/view/SView;

    const/high16 v2, -0x8000

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v2, -0x8000

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v12

    if-nez v12, :cond_1

    new-instance v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v12, v2, v3}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    instance-of v2, v12, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    move-object v15, v12

    check-cast v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$1300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$1400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {v14, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$1500(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$1600(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {v13, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v1, v8, v7}, Lcom/htc/sunny2/view/SView;->measure(II)V

    :goto_2
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v17

    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/view/SView;->layout(FFFII)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$1700(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$1800(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {v14, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$1900(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$2000(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {v13, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v1, v8, v7}, Lcom/htc/sunny2/view/SView;->measure(II)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->processLayoutRequest()V

    const/4 v0, 0x1

    return v0
.end method

.method requestLayout()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    :cond_0
    return-void
.end method
