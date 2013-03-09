.class public Lcom/google/android/gm/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"

# interfaces
.implements Lcom/google/android/gm/ScrollNotifier;


# static fields
.field private static sBitmapHeight:I

.field private static sBitmapWidth:I

.field private static sMatrix:Landroid/graphics/Matrix;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sWebviewInitialDelay:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mHandler:Landroid/os/Handler;

.field private mLeft:I

.field private final mNotifyPageRenderedInHardwareLayer:Ljava/lang/Runnable;

.field private mPagingDisabled:Z

.field private final mScrollListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/ScrollNotifier$ScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTop:I

.field private mUseSoftwareLayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/google/android/gm/CustomWebView$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/CustomWebView$1;-><init>(Lcom/google/android/gm/CustomWebView;)V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mNotifyPageRenderedInHardwareLayer:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mHandler:Landroid/os/Handler;

    .line 65
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    .line 66
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/google/android/gm/CustomWebView$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/CustomWebView$1;-><init>(Lcom/google/android/gm/CustomWebView;)V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mNotifyPageRenderedInHardwareLayer:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mHandler:Landroid/os/Handler;

    .line 65
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    .line 66
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/google/android/gm/CustomWebView$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/CustomWebView$1;-><init>(Lcom/google/android/gm/CustomWebView;)V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mNotifyPageRenderedInHardwareLayer:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mHandler:Landroid/os/Handler;

    .line 65
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    .line 66
    iput v1, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gm/CustomWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/gm/CustomWebView;->mUseSoftwareLayer:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/CustomWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gm/CustomWebView;->destroyBitmap()V

    return-void
.end method

.method private destroyBitmap()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public addScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public canScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    iget-boolean v4, p0, Lcom/google/android/gm/CustomWebView;->mPagingDisabled:Z

    if-eqz v4, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/CustomWebView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 191
    .local v0, offset:I
    invoke-virtual {p0}, Lcom/google/android/gm/CustomWebView;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gm/CustomWebView;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 192
    .local v1, range:I
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    .line 193
    :cond_2
    if-gez p1, :cond_3

    .line 194
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 196
    :cond_3
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/android/gm/CustomWebView;->destroyBitmap()V

    .line 231
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 234
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 206
    iget-boolean v0, p0, Lcom/google/android/gm/CustomWebView;->mUseSoftwareLayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 212
    iget v0, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/google/android/gm/CustomWebView;->sMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/google/android/gm/CustomWebView;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 82
    sget-object v2, Lcom/google/android/gm/CustomWebView;->sMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gm/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CustomWebView;->sWebviewInitialDelay:I

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/google/android/gm/CustomWebView;->sBitmapWidth:I

    .line 91
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/google/android/gm/CustomWebView;->sBitmapHeight:I

    .line 93
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    sput-object v2, Lcom/google/android/gm/CustomWebView;->sMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/google/android/gm/CustomWebView;->sPaint:Landroid/graphics/Paint;

    .line 98
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    sget v2, Lcom/google/android/gm/CustomWebView;->sBitmapWidth:I

    sget v3, Lcom/google/android/gm/CustomWebView;->sBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    .line 99
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/google/android/gm/CustomWebView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/android/gm/CustomWebView;->mCanvas:Landroid/graphics/Canvas;

    .line 100
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 171
    iput p1, p0, Lcom/google/android/gm/CustomWebView;->mLeft:I

    .line 172
    iput p2, p0, Lcom/google/android/gm/CustomWebView;->mTop:I

    .line 174
    iget-object v2, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ScrollNotifier$ScrollListener;

    .line 175
    .local v1, listener:Lcom/google/android/gm/ScrollNotifier$ScrollListener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/gm/ScrollNotifier$ScrollListener;->onNotifierScroll(II)V

    goto :goto_0

    .line 177
    .end local v1           #listener:Lcom/google/android/gm/ScrollNotifier$ScrollListener;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/CustomWebView;->mUseSoftwareLayer:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/CustomWebView;->mNotifyPageRenderedInHardwareLayer:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/gm/CustomWebView;->sWebviewInitialDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_0
    return-void
.end method

.method public removeScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView;->mScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/CustomWebView;->mPagingDisabled:Z

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseSoftwareLayer(Z)V
    .locals 0
    .parameter "useSoftware"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/google/android/gm/CustomWebView;->mUseSoftwareLayer:Z

    .line 113
    return-void
.end method
