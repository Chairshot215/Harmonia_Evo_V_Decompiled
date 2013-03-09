.class public Lcom/htc/widget/DeckControlView;
.super Lcom/htc/sunny/SSurfaceView;
.source "DeckControlView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DeckControlView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlView;->initW()V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "attrset"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 21
    iget-boolean v2, p0, Lcom/htc/widget/DeckControlView;->mInited:Z

    if-nez v2, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, attrarray:Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const/16 v2, 0xc

    const/high16 v3, -0x100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-nez v2, :cond_2

    .line 39
    iput-boolean v4, p0, Lcom/htc/widget/DeckControlView;->mEnabledTranslucent:Z

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    .end local v0           #attrarray:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    iget-boolean v2, p0, Lcom/htc/widget/DeckControlView;->mEnabledTranslucent:Z

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p0, v4}, Lcom/htc/widget/DeckControlView;->setZOrderOnTop(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 59
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v2, :cond_4

    .line 61
    iget-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v2, v5}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 62
    iget-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v2}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    .line 71
    :goto_2
    new-instance v2, Lcom/htc/widget/DeckControlView$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/DeckControlView$1;-><init>(Lcom/htc/widget/DeckControlView;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/DeckControlView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 79
    iput-boolean v4, p0, Lcom/htc/widget/DeckControlView;->mInited:Z

    .line 81
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    return-void

    .line 41
    .restart local v0       #attrarray:Landroid/content/res/TypedArray;
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/DeckControlView;->mEnabledTranslucent:Z

    goto :goto_0

    .line 57
    .end local v0           #attrarray:Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_1

    .line 66
    :cond_4
    new-instance v2, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v3, "3D Render Thread"

    invoke-direct {v2, p0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 67
    iget-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v2, v5}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 68
    iget-object v2, p0, Lcom/htc/widget/DeckControlView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v2}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    goto :goto_2
.end method
