.class Lcom/htc/widget/HtcAbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3457
    #getter for: Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/HtcAbsListView;->access$1700(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 3458
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v15

    .line 3553
    .local v15, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 3555
    .local v5, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 3679
    :cond_0
    :goto_0
    return-void

    .line 3557
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 3558
    .local v12, lastViewIndex:I
    add-int v8, v5, v12

    .line 3560
    .local v8, lastPos:I
    if-ltz v12, :cond_0

    .line 3564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_1

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3570
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3571
    .local v9, lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3572
    .local v11, lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3573
    .local v14, lastViewTop:I
    sub-int v13, v15, v14

    .line 3574
    .local v13, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 3576
    .local v4, extraScroll:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v11, v13

    add-int v22, v22, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 3579
    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    .line 3581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3574
    .end local v4           #extraScroll:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 3587
    .end local v8           #lastPos:I
    .end local v9           #lastView:Landroid/view/View;
    .end local v11           #lastViewHeight:I
    .end local v12           #lastViewIndex:I
    .end local v13           #lastViewPixelsShowing:I
    .end local v14           #lastViewTop:I
    :pswitch_1
    const/16 v19, 0x1

    .line 3588
    .local v19, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 3590
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v5, v0, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v3, v0, :cond_0

    add-int v21, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 3594
    add-int/lit8 v16, v5, 0x1

    .line 3596
    .local v16, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 3598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3602
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3603
    .local v17, nextView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 3604
    .local v18, nextViewHeight:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    .line 3605
    .local v20, nextViewTop:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 3606
    .restart local v4       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v20

    sub-int v23, v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 3610
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3614
    :cond_4
    move/from16 v0, v20

    if-le v0, v4, :cond_0

    .line 3615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 3622
    .end local v3           #childCount:I
    .end local v4           #extraScroll:I
    .end local v16           #nextPos:I
    .end local v17           #nextView:Landroid/view/View;
    .end local v18           #nextViewHeight:I
    .end local v19           #nextViewIndex:I
    .end local v20           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3628
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3629
    .local v6, firstView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 3632
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3633
    .local v7, firstViewTop:I
    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 3635
    .restart local v4       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 3637
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v5, v0, :cond_0

    .line 3640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3633
    .end local v4           #extraScroll:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 3646
    .end local v6           #firstView:Landroid/view/View;
    .end local v7           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x2

    .line 3647
    .restart local v12       #lastViewIndex:I
    if-ltz v12, :cond_0

    .line 3650
    add-int v8, v5, v12

    .line 3652
    .restart local v8       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    .line 3654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3658
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3659
    .restart local v9       #lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3660
    .restart local v11       #lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3661
    .restart local v14       #lastViewTop:I
    sub-int v13, v15, v14

    .line 3662
    .restart local v13       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v8, v0, :cond_8

    .line 3664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3667
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    .line 3668
    .local v2, bottom:I
    add-int v10, v14, v11

    .line 3669
    .local v10, lastViewBottom:I
    if-le v2, v10, :cond_0

    .line 3670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v2, v10

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 3555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 3461
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v0, v3, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 3462
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 3464
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 3465
    .local v2, viewTravelCount:I
    if-gt p1, v0, :cond_1

    .line 3466
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 3467
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    .line 3476
    :goto_0
    if-lez v2, :cond_2

    .line 3477
    div-int v3, v5, v2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    .line 3481
    :goto_1
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    .line 3482
    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    .line 3483
    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3485
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3486
    :cond_0
    return-void

    .line 3468
    :cond_1
    if-lt p1, v1, :cond_0

    .line 3469
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 3470
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 3479
    :cond_2
    iput v5, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 3489
    if-ne p2, v9, :cond_1

    .line 3490
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 3545
    :cond_0
    :goto_0
    return-void

    .line 3494
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v7, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 3495
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 3497
    .local v4, lastPos:I
    const/4 v6, 0x0

    .line 3498
    .local v6, viewTravelCount:I
    if-gt p1, v3, :cond_3

    .line 3499
    sub-int v1, v4, p2

    .line 3500
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_0

    .line 3505
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 3506
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 3507
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_2

    .line 3508
    move v6, v2

    .line 3509
    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    .line 3535
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v6, :cond_5

    .line 3536
    div-int v7, v10, v6

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    .line 3540
    :goto_2
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    .line 3541
    iput p2, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    .line 3542
    iput v9, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 3544
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3511
    .restart local v1       #boundPosFromLast:I
    :cond_2
    move v6, v5

    .line 3512
    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3514
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 3515
    sub-int v0, p2, v3

    .line 3516
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_0

    .line 3521
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 3522
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 3523
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_4

    .line 3524
    move v6, v2

    .line 3525
    const/4 v7, 0x3

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3527
    :cond_4
    move v6, v5

    .line 3528
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3538
    .end local v0           #boundPosFromFirst:I
    :cond_5
    iput v10, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3549
    return-void
.end method
