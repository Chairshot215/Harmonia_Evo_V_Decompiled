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

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    return-void
.end method

.method private cleanPreviousWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    :cond_1
    return-void
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    :goto_1
    if-ge v1, v7, :cond_2

    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x0

    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v11

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move v5, v8

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v6, v2, :cond_2

    move v2, v6

    const/4 v3, 0x0

    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupBubbleView()V
    .locals 5

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v3, "common_notification_on"

    const v4, 0x208006a

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private setupEnvironment()V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    :cond_0
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setGravity(I)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HeaderBarDropDown;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

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

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x20900e7

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x2020256

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-nez v3, :cond_3

    :cond_2
    const v3, 0x20d009b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v3, 0x20d009a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x2020260

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    const v3, 0x2020261

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    const v3, 0x202019f

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    if-gez v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    :cond_4
    return-void
.end method

.method private setupFrontImage()V
    .locals 6

    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x20d0090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupProgressView()V
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v2, :cond_0

    const v2, 0x20d009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    :cond_0
    const v2, 0x20d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900e9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    :cond_1
    return-void
.end method

.method public enableIndicatorOffset(Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20d009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :goto_0
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 1

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

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v4, 0x2030049

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleText(Ljava/lang/String;)V

    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    return-void

    :cond_0
    const v1, 0x20300d7

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20d009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

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

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setFrontImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFrontImageResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setFrontImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setFrontImageVisibility(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setProgressVisibility(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupProgressView()V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setSecondaryText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSecondaryVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 13

    const v12, 0x208073c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

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

    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    :cond_8
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

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

    :cond_c
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method updateResource()V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030043

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030049

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
