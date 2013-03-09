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

    .prologue
    .line 24
    const-class v0, Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/AlbumCommandBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mHeight:I

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "arg0"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mHeight:I

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    .line 54
    return-void
.end method


# virtual methods
.method public addControlBar(Lcom/htc/opensense/album/ControlButtonCollection;Z)V
    .locals 5
    .parameter "controlBar"
    .parameter "bIsDefault"

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    if-ne v4, p2, :cond_0

    .line 135
    iput-object p1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    .line 136
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    .line 139
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

    .line 141
    return-void
.end method

.method public addControlBarSets(Ljava/util/ArrayList;I)V
    .locals 5
    .parameter
    .parameter "nID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlButtonCollection;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, controlBars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/ControlButtonCollection;>;"
    const/4 v4, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
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

    .line 158
    invoke-virtual {p0, p2, v4}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    goto :goto_0
.end method

.method public addCurrentBarToView()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 83
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    :cond_1
    iget v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 92
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 93
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 95
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .local v0, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 97
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 98
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlButtonCollection;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 104
    .end local v0           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 109
    iget-object v1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 112
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .restart local v0       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 114
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    goto :goto_1
.end method

.method public getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;
    .locals 1

    .prologue
    .line 225
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

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isExistControlBar(I)Z
    .locals 4
    .parameter "nID"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 65
    .local v1, controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 67
    iget-object v3, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    check-cast v1, Lcom/htc/opensense/album/ControlButtonCollection;

    .line 68
    .restart local v1       #controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlButtonCollection;->getID()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0

    .line 65
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 209
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    .line 211
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    .line 213
    .local v0, collection:Lcom/htc/opensense/album/ControlButtonCollection;
    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButtonCollection;->clear()V

    goto :goto_0

    .line 215
    .end local v0           #collection:Lcom/htc/opensense/album/ControlButtonCollection;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 237
    iput p1, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mLayoutMode:I

    .line 238
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 239
    .local v3, vp:Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 240
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 241
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 242
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, v:Landroid/view/View;
    if-ne v2, p0, :cond_0

    .line 241
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->getId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 252
    .end local v2           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->requestLayout()V

    .line 254
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    .line 200
    .local v0, collection:Lcom/htc/opensense/album/ControlButtonCollection;
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 202
    .end local v0           #collection:Lcom/htc/opensense/album/ControlButtonCollection;
    :cond_0
    return-void
.end method

.method public switchControlBarLayout(II)V
    .locals 6
    .parameter "nID"
    .parameter "nVisibility"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 174
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mListBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    check-cast v0, Lcom/htc/opensense/album/ControlButtonCollection;

    .line 176
    .restart local v0       #controlBar:Lcom/htc/opensense/album/ControlButtonCollection;
    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButtonCollection;->getID()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 178
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    .line 172
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
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

    .line 183
    iput-object v0, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    .line 184
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v2}, Lcom/htc/opensense/album/ControlButtonCollection;->refreshLayout()V

    .line 185
    iget-object v2, p0, Lcom/htc/opensense/album/AlbumCommandBar;->mCurrentBar:Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/ControlButtonCollection;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/opensense/album/AlbumCommandBar;->addCurrentBarToView()V

    goto :goto_1

    .line 190
    :cond_1
    return-void
.end method
