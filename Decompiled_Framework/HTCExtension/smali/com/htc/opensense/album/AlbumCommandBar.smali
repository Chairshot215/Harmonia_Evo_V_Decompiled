.class public Lcom/htc/opensense/album/AlbumCommandBar;
.super Landroid/widget/LinearLayout;
.source "AlbumCommandBar.java"


# static fields
.field public static final LAYOUT_MODE_LANDSCAPE:I = 0x1

.field public static final LAYOUT_MODE_PORTRAIT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

.field private mHeight:I

.field private mLayoutMode:I

.field private mListBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlButtonCollection;",
            ">;"
        }
    .end annotation
.end field

.field private params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/AlbumCommandBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mHeight:I

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mHeight:I

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    return-void
.end method


# virtual methods
.method public addControlBar(Lcom/htc/opensense/album/ControlButtonCollection;Z)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, p2, :cond_0

    iput-object p1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/htc/opensense/album/AlbumCommandBar;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[HTCAlbum][AlbumCommandBar][addControlBar]: "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addControlBarSets(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlButtonCollection;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/htc/opensense/album/AlbumCommandBar;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][AlbumCommandBar][addControlBarSets]: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v4}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    goto :goto_0
.end method

.method public addCurrentBarToView()V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    :cond_1
    iget v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    :goto_1
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlButtonCollection;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    goto :goto_1
.end method

.method public getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    return-object v0
.end method

.method public getControlBars()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlButtonCollection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isExistControlBar(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlButtonCollection;->getID()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButtonCollection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setLayoutMode(I)V
    .locals 7

    const/4 v6, 0x0

    iput p1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public switchControlBarLayout(II)V
    .locals 6

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButtonCollection;->getID()I

    move-result v2

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/htc/opensense/album/AlbumCommandBar;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[HTCAlbum][AlbumCommandBar][switchControlBarLayout]: Found:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v2}, Lcom/htc/opensense/album/ControlButtonCollection;->refreshLayout()V

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->addCurrentBarToView()V

    goto :goto_1

    :cond_1
    return-void
.end method
