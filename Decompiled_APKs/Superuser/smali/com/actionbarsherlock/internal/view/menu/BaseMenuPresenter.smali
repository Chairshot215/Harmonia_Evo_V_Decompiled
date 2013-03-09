.class public abstract Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    iput p3, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    instance-of v0, p2, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    move-object v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mId:I

    return-void
.end method

.method public shouldIncludeItem(ILcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    :goto_0
    if-lt v6, v8, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v2, v3, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    if-eqz v2, :cond_6

    move-object v2, v3

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v1, v3, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eq v1, v2, :cond_4

    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    if-eq v9, v3, :cond_5

    invoke-virtual {p0, v9, v4}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v1, v4, 0x1

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_1
.end method
