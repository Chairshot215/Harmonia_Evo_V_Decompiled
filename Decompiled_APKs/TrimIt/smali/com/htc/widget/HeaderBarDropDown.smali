.class public Lcom/htc/widget/HeaderBarDropDown;
.super Landroid/widget/LinearLayout;
.source "HeaderBarDropDown.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# instance fields
.field private bubbleView:Landroid/view/View;

.field private clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private enableOffset:Z

.field private frontImage:Landroid/widget/ImageView;

.field private indicatorOffset:I

.field private indicatorView:Landroid/view/View;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listFooterView:Landroid/view/View;

.field private listHeaderView:Landroid/view/View;

.field private popupAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

.field private popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private popupMaxWidth:I

.field private primaryText:Landroid/widget/TextView;

.field private progressOffset:I

.field private progressUpdate:Z

.field private progressView:Landroid/view/View;

.field private secondaryText:Landroid/widget/TextView;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private skipChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    .line 37
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 40
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 116
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 117
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 168
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 172
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 174
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 177
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 178
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 181
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 182
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 186
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 188
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 604
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 659
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 49
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    .line 37
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 40
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 116
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 117
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 168
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 172
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 174
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 177
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 178
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 181
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 182
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 186
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 188
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 604
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 659
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 55
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrset"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    .line 37
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 40
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 116
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 117
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 168
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 172
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 174
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 177
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 178
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 181
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 182
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 186
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 188
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 604
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 659
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 61
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 62
    return-void
.end method

.method private cleanPreviousWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 342
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 344
    :cond_1
    return-void
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 569
    if-nez p1, :cond_0

    .line 596
    :goto_0
    return v3

    .line 572
    :cond_0
    const/4 v11, 0x0

    .line 573
    .local v11, maxWidth:I
    const/4 v9, 0x0

    .line 575
    .local v9, itemType:I
    const/4 v10, 0x0

    .line 577
    .local v10, itemView:Landroid/view/View;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 578
    .local v12, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 580
    .local v8, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, loopi:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    .local v7, groupCount:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 582
    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 583
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 585
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 587
    const/4 v2, 0x0

    .local v2, loopj:I
    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .local v6, childCount:I
    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    .line 589
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 590
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 592
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 580
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #loopj:I
    .end local v6           #childCount:I
    :cond_2
    move v3, v11

    .line 596
    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 524
    if-nez p1, :cond_1

    move v5, v8

    .line 564
    :cond_0
    :goto_0
    return v5

    .line 527
    :cond_1
    const/4 v5, 0x0

    .line 528
    .local v5, maxWidth:I
    const/4 v2, 0x0

    .line 529
    .local v2, itemType:I
    const/4 v6, 0x0

    .line 531
    .local v6, positionType:I
    const/4 v3, 0x0

    .line 533
    .local v3, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 534
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 536
    .local v1, heightMeasureSpec:I
    const/4 v4, 0x0

    .local v4, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 538
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 540
    if-eq v6, v2, :cond_2

    .line 542
    move v2, v6

    .line 543
    const/4 v3, 0x0

    .line 546
    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    .line 548
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 552
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 554
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 555
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 558
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 560
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 561
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupBubbleView()V
    .locals 5

    .prologue
    .line 683
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 687
    .local v0, bubbleSize:I
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 688
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v3, "common_notification_on"

    const v4, 0x208006a

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 693
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    .line 695
    .end local v0           #bubbleSize:I
    :cond_0
    return-void
.end method

.method private setupEnvironment()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 67
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 72
    :cond_0
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setGravity(I)V

    .line 73
    invoke-virtual {p0, v7}, Lcom/htc/widget/HeaderBarDropDown;->setOrientation(I)V

    .line 74
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v5, "common_titlebar_btn"

    const v6, 0x208072d

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    .line 83
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 86
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x20900e7

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    const v3, 0x2020256

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    .line 92
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-nez v3, :cond_3

    .line 94
    :cond_2
    const v3, 0x20d009b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 95
    .local v0, leftPadding:I
    const v3, 0x20d009a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 97
    .local v2, rightPadding:I
    const v3, 0x2020260

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 98
    const v3, 0x2020261

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 99
    const v3, 0x202019f

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    .end local v0           #leftPadding:I
    .end local v2           #rightPadding:I
    :cond_3
    iget v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    if-gez v3, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 104
    :cond_4
    return-void
.end method

.method private setupFrontImage()V
    .locals 6

    .prologue
    .line 608
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 610
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 612
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20d008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 613
    .local v1, imageSize:I
    const v4, 0x20d0090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 617
    .local v2, leftMargin:I
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 618
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    .local v0, frontParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 622
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .end local v0           #frontParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #imageSize:I
    .end local v2           #leftMargin:I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private setupProgressView()V
    .locals 5

    .prologue
    .line 664
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 668
    .local v1, resources:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v2, :cond_0

    .line 669
    const v2, 0x20d009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 671
    :cond_0
    const v2, 0x20d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 673
    .local v0, progressSize:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900e9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 674
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    .line 678
    .end local v0           #progressSize:I
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 676
    .restart local v0       #progressSize:I
    .restart local v1       #resources:Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 281
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 276
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 262
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 271
    :cond_1
    return-void
.end method

.method public enableIndicatorOffset(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 123
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    if-gez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20d009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :goto_0
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 127
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 112
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 469
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v0

    .line 481
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v1

    .line 484
    .local v1, paddingRight:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 487
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v4, 0x2030049

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 492
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto :goto_0

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    .line 508
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 230
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 249
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 250
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 255
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 230
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 199
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 201
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 218
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 219
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 224
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleText(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    .line 729
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    const v1, 0x20300d5

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 732
    return-void

    .line 730
    :cond_0
    const v1, 0x20300d7

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    .line 701
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 705
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 713
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 714
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    goto :goto_0

    .line 713
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20d009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 143
    :cond_1
    if-nez p1, :cond_3

    .line 144
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 147
    :goto_1
    return-void

    .line 138
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 146
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :goto_2
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public setFrontImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 636
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 637
    return-void
.end method

.method public setFrontImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 642
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    return-void
.end method

.method public setFrontImageResource(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 648
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    return-void
.end method

.method public setFrontImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 654
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 655
    return-void
.end method

.method public setFrontImageVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 629
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 311
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 193
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 292
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 305
    :cond_0
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 791
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    :cond_0
    return-void
.end method

.method public setProgressVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    .line 746
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupProgressView()V

    .line 748
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 759
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 760
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    goto :goto_0

    .line 759
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 803
    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :cond_0
    return-void
.end method

.method public setSecondaryVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    const v12, 0x208073c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 354
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    .line 356
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    .line 364
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    if-eqz v0, :cond_8

    .line 366
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 367
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 372
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    .line 373
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 375
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    .line 376
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 379
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 381
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 382
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 383
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 387
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 388
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 390
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 391
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 393
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    .line 394
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    .line 397
    .local v3, paddingRight:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    .line 398
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v7, "common_titlebar_btn_selected"

    invoke-static {v6, v7, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 404
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 405
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    :cond_7
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 413
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    .line 415
    .local v1, adapterExp:Landroid/widget/ExpandableListAdapter;
    :goto_2
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 420
    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 425
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    .line 426
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 428
    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    .line 429
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 431
    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    .line 432
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 434
    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    .line 435
    .local v4, wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 436
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 437
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 438
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 441
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 442
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 444
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 445
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 447
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    .line 448
    .restart local v2       #paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    .line 451
    .restart local v3       #paddingRight:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 452
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v7, "common_titlebar_btn_selected"

    invoke-static {v6, v7, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 455
    :cond_c
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 458
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 459
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    :cond_d
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    goto/16 :goto_0

    .line 362
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #adapterExp:Landroid/widget/ExpandableListAdapter;
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 413
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method updateResource()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030043

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030049

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    :cond_1
    return-void
.end method
