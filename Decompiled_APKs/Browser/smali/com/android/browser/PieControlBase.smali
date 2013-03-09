.class public abstract Lcom/android/browser/PieControlBase;
.super Ljava/lang/Object;
.source "PieControlBase.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PieControlBase$TabAdapter;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mItemSize:I

.field protected mPie:Lcom/android/browser/view/PieMenu;

.field protected mTabsCount:Landroid/widget/TextView;

.field protected mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 2
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    .line 55
    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 4
    .parameter "container"

    .prologue
    const/4 v3, -0x1

    .line 58
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/android/browser/view/PieMenu;

    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/view/PieMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    .line 60
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v1, v0}, Lcom/android/browser/view/PieMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/browser/PieControlBase;->populateMenu()V

    .line 64
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/PieMenu;->setController(Lcom/android/browser/view/PieMenu$PieController;)V

    .line 66
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method protected forceToTop(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected makeItem(II)Lcom/android/browser/view/PieItem;
    .locals 4
    .parameter "image"
    .parameter "l"

    .prologue
    .line 96
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget v2, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 99
    iget v2, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 100
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    iget v3, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 102
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v2, Lcom/android/browser/view/PieItem;

    invoke-direct {v2, v1, p2}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    return-object v2
.end method

.method protected makeTabsView()Landroid/view/View;
    .locals 6

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0d0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/browser/PieControlBase;->mTabsCount:Landroid/widget/TextView;

    .line 109
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mTabsCount:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v3, 0x7f0d0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, image:Landroid/widget/ImageView;
    const v3, 0x7f02004a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    iget v4, p0, Lcom/android/browser/PieControlBase;->mItemSize:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 114
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-object v2
.end method

.method public onOpen()Z
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 91
    .local v0, n:I
    iget-object v1, p0, Lcom/android/browser/PieControlBase;->mTabsCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v1, 0x1

    return v1
.end method

.method protected abstract populateMenu()V
.end method

.method protected removeFromContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method protected varargs setClickListener(Landroid/view/View$OnClickListener;[Lcom/android/browser/view/PieItem;)V
    .locals 5
    .parameter "listener"
    .parameter "items"

    .prologue
    .line 83
    move-object v0, p2

    .local v0, arr$:[Lcom/android/browser/view/PieItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 84
    .local v2, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #item:Lcom/android/browser/view/PieItem;
    :cond_0
    return-void
.end method
