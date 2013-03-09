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

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/AlbumTitleBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mHeight:I

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "arg0"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mHeight:I

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    return-void
.end method


# virtual methods
.method public addControlBar(Lcom/htc/opensense/album/ControlTitleBar;Z)V
    .locals 2
    .parameter "controlBar"
    .parameter "bIsDefault"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 57
    iput-object p1, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    .line 58
    invoke-virtual {p1}, Lcom/htc/opensense/album/ControlTitleBar;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/AlbumTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_0
    return-void
.end method

.method public addControlBarSets(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "nID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlTitleBar;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, controlBars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/ControlTitleBar;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
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

    .line 77
    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/AlbumTitleBar;->switchControlBarLayout(I)V

    goto :goto_0
.end method

.method public getControlBar()Lcom/htc/opensense/album/ControlTitleBar;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    return-object v0
.end method

.method public isExistControlBar(I)Z
    .locals 4
    .parameter "nID"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 127
    .local v1, controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    check-cast v1, Lcom/htc/opensense/album/ControlTitleBar;

    .line 130
    .restart local v1       #controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlTitleBar;->getID()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 132
    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0

    .line 127
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 116
    return-void
.end method

.method public switchControlBarLayout(I)V
    .locals 4
    .parameter "nID"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    check-cast v0, Lcom/htc/opensense/album/ControlTitleBar;

    .line 95
    .restart local v0       #controlBar:Lcom/htc/opensense/album/ControlTitleBar;
    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlTitleBar;->getID()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 97
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlTitleBar;->setVisibility(I)V

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/AlbumTitleBar;->mCurrentBar:Lcom/htc/opensense/album/ControlTitleBar;

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlTitleBar;->setVisibility(I)V

    .line 105
    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlTitleBar;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/AlbumTitleBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method
