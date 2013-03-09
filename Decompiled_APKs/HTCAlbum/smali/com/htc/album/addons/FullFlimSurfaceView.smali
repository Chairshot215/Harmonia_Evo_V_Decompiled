.class public Lcom/htc/album/addons/FullFlimSurfaceView;
.super Lcom/htc/sunny2/view/SSurfaceView;
.source "FullFlimSurfaceView.java"


# instance fields
.field mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRenderStartIRT()Z
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/sunny2/view/SSurfaceView;->onRenderStartIRT()Z

    .line 40
    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    .line 41
    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method
