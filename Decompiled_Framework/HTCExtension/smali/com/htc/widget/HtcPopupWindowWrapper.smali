.class public Lcom/htc/widget/HtcPopupWindowWrapper;
.super Ljava/lang/Object;
.source "HtcPopupWindowWrapper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mArchorView:Landroid/view/View;

.field private mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mPopupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private mPopupMaxWidth:I

.field private mTaggleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    goto :goto_0
.end method

.method private getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method private setArchorViewBackground(Z)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getTaggleView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_titlebar_btn_press"

    const v6, 0x2080736

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_titlebar_btn"

    const v6, 0x208072d

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setOnGlobalLayoutListener(Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method private setPopupExpShow(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupShow(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPopup()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    move v4, v5

    :goto_1
    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private showPopupExp()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListAdapter;

    move-object v0, v4

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    move v4, v5

    :goto_1
    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    :cond_3
    move v4, v6

    goto :goto_1
.end method

.method private tryShow()Z
    .locals 3

    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopup()Z

    move-result v0

    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupExp()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismissWithoutAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismissWithoutAnimation()V

    :cond_1
    return-void
.end method

.method public getArchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    return-object v0
.end method

.method public getTaggleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    return-object v0
.end method

.method public isPopupExpShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2, v8, v9, v9}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v5
.end method

.method public onDismiss()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_1
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupExpShowing()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setArchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public setTaggleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    return-void
.end method

.method public showPopupWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
