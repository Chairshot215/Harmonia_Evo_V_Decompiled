.class public Lcom/htc/opensense/album/AlbumTitleBar;
.super Landroid/widget/LinearLayout;
.source "AlbumTitleBar.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

.field private mHeight:I

.field private mListBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlTitleBar;",
            ">;"
        }
    .end annotation
.end field

.field private params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/AlbumTitleBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mHeight:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mHeight:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public addControlBar(Lcom/htc/opensense/album/ControlTitleBar;Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    invoke-virtual {p1}, Lcom/htc/opensense/album/ControlTitleBar;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/AlbumTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addControlBarSets(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlTitleBar;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/htc/opensense/album/AlbumTitleBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumTitleBar][addControlBarSets]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/AlbumTitleBar;->switchControlBarLayout(I)V

    goto :goto_0
.end method

.method public getControlBar()Lcom/htc/opensense/album/ControlTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    return-object v0
.end method

.method public isExistControlBar(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ControlTitleBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlTitleBar;->getID()I

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
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public switchControlBarLayout(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlTitleBar;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlTitleBar;->getID()I

    move-result v2

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlTitleBar;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlTitleBar;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlTitleBar;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method
