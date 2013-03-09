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

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/HtcAbsListView;->access$1300(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    add-int v8, v5, v12

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v13, v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

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

    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

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

    :pswitch_1
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

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

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    add-int/lit8 v16, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

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

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v20

    if-le v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

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

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x2

    if-ltz v12, :cond_0

    add-int v8, v5, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v13, v15, v14

    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v8, v0, :cond_8

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    add-int v10, v14, v11

    if-le v2, v10, :cond_0

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

    const/16 v5, 0x190

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v0, v3, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v2, :cond_2

    div-int v3, v5, v2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    if-lt p1, v1, :cond_0

    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11

    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    if-ne p2, v9, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v7, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    const/4 v6, 0x0

    if-gt p1, v3, :cond_3

    sub-int v1, v4, p2

    if-lt v1, v8, :cond_0

    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v2, v1, -0x1

    if-ge v2, v5, :cond_2

    move v6, v2

    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    :goto_1
    if-lez v6, :cond_5

    div-int v7, v10, v6

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    :goto_2
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    iput v9, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v6, v5

    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_3
    if-lt p1, v4, :cond_0

    sub-int v0, p2, v3

    if-lt v0, v8, :cond_0

    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v2, v0, -0x1

    if-ge v2, v5, :cond_4

    move v6, v2

    const/4 v7, 0x3

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_4
    move v6, v5

    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_5
    iput v10, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
