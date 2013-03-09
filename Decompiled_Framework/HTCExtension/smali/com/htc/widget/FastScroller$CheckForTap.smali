.class final Lcom/htc/widget/FastScroller$CheckForTap;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Lcom/htc/widget/FastScroller;->setState(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemWidth:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v14

    sub-int v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v15

    sub-int v10, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v14

    sub-int v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    sub-int v3, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v11

    int-to-float v14, v7

    add-int/lit8 v15, v11, -0x1

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    mul-float v2, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v15

    sub-int v1, v14, v15

    int-to-float v14, v1

    sub-float v9, v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v14

    sub-int v14, v10, v14

    if-gez v14, :cond_1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    :cond_1
    mul-int v14, v11, v6

    sub-int/2addr v14, v3

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v14

    float-to-int v15, v9

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static/range {v17 .. v17}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v8

    mul-int v14, v7, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v15}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v15

    add-int v4, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v14}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v14

    sub-int v15, v4, v8

    invoke-virtual {v14, v15, v4, v7}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_0
.end method
