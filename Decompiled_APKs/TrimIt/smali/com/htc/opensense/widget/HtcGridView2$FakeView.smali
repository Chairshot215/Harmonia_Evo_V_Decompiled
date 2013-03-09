.class Lcom/htc/opensense/widget/HtcGridView2$FakeView;
.super Landroid/view/ViewGroup;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeView"
.end annotation


# instance fields
.field private h:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mIsInit:Z

.field private mPageBitmap:Landroid/graphics/Bitmap;

.field private mViwId:I

.field rectDraw:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1967
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    .line 1968
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1959
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mIsInit:Z

    .line 1960
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 1961
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    .line 1962
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->w:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->h:I

    .line 1963
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mViwId:I

    .line 1965
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->rectDraw:Landroid/graphics/Rect;

    .line 1969
    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mViwId:I

    .line 1970
    return-void
.end method


# virtual methods
.method public IsInit()Z
    .locals 1

    .prologue
    .line 1986
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mIsInit:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 2013
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_3

    .line 2015
    const/4 v1, 0x0

    .line 2017
    .local v1, bIsChildAnimating:Z
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2019
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildCount()I

    move-result v4

    .line 2020
    .local v4, nChildCount:I
    const/4 v2, 0x0

    .line 2021
    .local v2, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2022
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2023
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2024
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2025
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2026
    const/4 v1, 0x1

    .line 2022
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2030
    :cond_1
    const/4 v5, 0x1

    if-ne v5, v1, :cond_2

    .line 2033
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->invalidate(Landroid/graphics/Rect;)V

    .line 2036
    :cond_2
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2037
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2039
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #bIsChildAnimating:Z
    .end local v2           #child:Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #nChildCount:I
    :cond_3
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "bmp"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2000
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public free()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    const/4 v1, 0x0

    .line 1989
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1991
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 1994
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    .line 1997
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mIsInit:Z

    .line 1998
    return-void
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2006
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->draw(Landroid/graphics/Canvas;)V

    .line 2007
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method initPage(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    const/4 v2, 0x1

    .line 1973
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mIsInit:Z

    if-ne v2, v0, :cond_0

    .line 1984
    :goto_0
    return-void

    .line 1974
    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->w:I

    .line 1975
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->h:I

    .line 1977
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1978
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 1979
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    .line 1980
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mCanvas:Landroid/graphics/Canvas;

    .line 1983
    :cond_2
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->mIsInit:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 2043
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    return-void
.end method
