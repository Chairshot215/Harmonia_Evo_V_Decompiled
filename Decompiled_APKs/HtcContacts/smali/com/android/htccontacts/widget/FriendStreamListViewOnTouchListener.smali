.class public Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;
.super Ljava/lang/Object;
.source "FriendStreamListViewOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mBackgroundColor:I

.field private mForegroundColor:I

.field public mLastTvX:F

.field public mLastTvY:F

.field public mLastX:F

.field public mLastY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, -0x1

    const v1, -0xff0100

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;-><init>(II)V

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "fgcolor"
    .parameter "bgcolor"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastX:F

    iput v0, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastY:F

    .line 25
    iput v0, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastTvX:F

    iput v0, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastTvY:F

    .line 32
    iput p1, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mForegroundColor:I

    .line 33
    iput p2, p0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mBackgroundColor:I

    .line 34
    return-void
.end method

.method private static findAllTextView(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .parameter "viewGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 139
    .local v0, childCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, tvs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 143
    check-cast v3, Landroid/widget/TextView;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 145
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->findAllTextView(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 148
    :cond_2
    return-object v2
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "v"
    .parameter "event"

    .prologue
    .line 38
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/htc/widget/HtcListView;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 39
    const/4 v3, 0x0

    .line 134
    :goto_0
    return v3

    .line 42
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 43
    .local v16, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 45
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v10, v16, v20

    .line 46
    .local v10, sx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v18, v20

    .local v11, sy:F
    move-object/from16 v6, p1

    .line 47
    check-cast v6, Lcom/htc/widget/HtcListView;

    .line 48
    .local v6, lv:Lcom/htc/widget/HtcListView;
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/htc/widget/HtcListView;->pointToPosition(II)I

    move-result v8

    .line 50
    .local v8, pos:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v20

    sub-int v20, v8, v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 51
    .local v5, itemView:Landroid/view/View;
    if-nez v5, :cond_1

    .line 52
    const/4 v3, 0x0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v14, 0x0

    .line 54
    .local v14, tvs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/TextView;>;"
    instance-of v0, v5, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 55
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #tvs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14       #tvs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/TextView;>;"
    move-object/from16 v20, v5

    .line 56
    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    :goto_1
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 61
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 62
    .local v13, tv:Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 64
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    .line 68
    .local v12, text:Landroid/text/Spannable;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v17, v10, v20

    .line 69
    .local v17, xc:F
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v11, v20

    .line 75
    .local v19, yc:F
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v9, rect:Landroid/graphics/Rect;
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v13}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 79
    .local v15, vp:Landroid/view/ViewParent;
    :goto_2
    if-eq v15, v5, :cond_4

    .line 80
    instance-of v0, v15, Landroid/view/View;

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 90
    :cond_4
    const/4 v15, 0x0

    .line 96
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 97
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 98
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 99
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastX:F

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastY:F

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastTvX:F

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mLastTvY:F

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_7

    .line 110
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 115
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v19, v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mForegroundColor:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mBackgroundColor:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->getInstance(II)Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v13, v12, v1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 119
    .local v3, handled:Z
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/16 :goto_0

    .line 57
    .end local v3           #handled:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #rect:Landroid/graphics/Rect;
    .end local v12           #text:Landroid/text/Spannable;
    .end local v13           #tv:Landroid/widget/TextView;
    .end local v15           #vp:Landroid/view/ViewParent;
    .end local v17           #xc:F
    .end local v19           #yc:F
    :cond_5
    instance-of v0, v5, Landroid/view/ViewGroup;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v5

    .line 58
    check-cast v20, Landroid/view/ViewGroup;

    invoke-static/range {v20 .. v20}, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->findAllTextView(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v14

    goto/16 :goto_1

    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #rect:Landroid/graphics/Rect;
    .restart local v12       #text:Landroid/text/Spannable;
    .restart local v13       #tv:Landroid/widget/TextView;
    .restart local v15       #vp:Landroid/view/ViewParent;
    .restart local v17       #xc:F
    .restart local v19       #yc:F
    :cond_6
    move-object v7, v15

    .line 83
    check-cast v7, Landroid/view/View;

    .line 84
    .local v7, parent:Landroid/view/View;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 85
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 86
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 87
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 88
    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 89
    goto/16 :goto_2

    .line 123
    .end local v7           #parent:Landroid/view/View;
    :cond_7
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v19, v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mForegroundColor:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;->mBackgroundColor:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->getInstance(II)Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v13, v12, v1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 127
    .restart local v3       #handled:Z
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/16 :goto_0

    .line 132
    .end local v3           #handled:Z
    .end local v9           #rect:Landroid/graphics/Rect;
    .end local v12           #text:Landroid/text/Spannable;
    .end local v13           #tv:Landroid/widget/TextView;
    .end local v15           #vp:Landroid/view/ViewParent;
    .end local v17           #xc:F
    .end local v19           #yc:F
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 134
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
