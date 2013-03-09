.class public Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/actionbarsherlock/R$layout;->abs__popup_menu_item_layout:I

    sput v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iput-boolean p4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/actionbarsherlock/R$dimen;->abs__config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    move v4, v0

    move v1, v0

    move-object v3, v2

    move v5, v0

    :goto_0
    if-lt v4, v8, :cond_0

    return v5

    :cond_0
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    move-object v1, v2

    :goto_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v1, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->size()I

    move-result v4

    move v0, v2

    :goto_0
    if-lt v0, v4, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    :cond_0
    :goto_2
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    check-cast p1, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {p1, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget v5, Lcom/actionbarsherlock/R$attr;->popupMenuStyle:I

    invoke-direct {v1, v3, v4, v5}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->addOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    iget v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return v2

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
