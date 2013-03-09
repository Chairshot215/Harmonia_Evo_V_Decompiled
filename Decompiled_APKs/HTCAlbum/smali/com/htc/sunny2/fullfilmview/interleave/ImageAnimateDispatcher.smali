.class public Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;
.super Ljava/lang/Object;
.source "ImageAnimateDispatcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimate:I

.field private mIndex:I

.field private mIsAnimating:Z

.field private mIsIndexChange:Z

.field private mIsSRotateBegin:Z

.field private mIsSRotateEnd:Z

.field private mIsSRotating:Z

.field private mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIndex:I

    .line 11
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    .line 13
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 18
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 19
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsAnimating:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    return-void
.end method


# virtual methods
.method public doDispatch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: -----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    if-ne v3, v0, :cond_1

    .line 103
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 105
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;->onAnimateBegin()V

    .line 107
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: SRotateBegin: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotating:Z

    if-ne v3, v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    if-ne v3, v0, :cond_2

    .line 112
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 113
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 114
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;->onAnimateEnd()V

    .line 116
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: SRotateEnd: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    if-lez v0, :cond_4

    .line 123
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsAnimating:Z

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;->onAnimateBegin()V

    .line 126
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsAnimating:Z

    .line 127
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateBegin..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3
    :goto_1
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: -----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :cond_4
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsAnimating:Z

    if-ne v3, v0, :cond_3

    .line 134
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsIndexChange:Z

    if-nez v0, :cond_5

    .line 136
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateEnd..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;->onAnimateEnd()V

    .line 145
    :goto_2
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_1

    .line 141
    :cond_5
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateEndSwitched..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;->onAnimateEndSwitched()V

    .line 143
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsIndexChange:Z

    goto :goto_2
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotating:Z

    return v0
.end method

.method public setAnimateBegin()V
    .locals 3

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 80
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setAnimateBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public setAnimateEnd()V
    .locals 3

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 85
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    if-gez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 87
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIndex:I

    .line 37
    return-void
.end method

.method public setListener(Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mListener:Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;

    .line 33
    return-void
.end method

.method public setScreenRotateBegin()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 68
    return-void
.end method

.method public setScreenRotateEnd()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 76
    return-void
.end method

.method public setScrollState(II)Z
    .locals 5
    .parameter "nIndex"
    .parameter "nState"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, bResult:Z
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, p2, :cond_0

    move v1, v0

    .line 62
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 44
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    .line 46
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIndex:I

    if-eq v2, p1, :cond_1

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 48
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mIndex:I

    .line 50
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, v3, :cond_3

    .line 52
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 60
    :cond_2
    :goto_1
    sget-object v2, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setScrollState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    move v1, v0

    .line 62
    .restart local v1       #bResult:I
    goto :goto_0

    .line 54
    .end local v1           #bResult:I
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mScrollState:I

    if-nez v2, :cond_2

    .line 56
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    .line 57
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    if-gez v2, :cond_2

    .line 58
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->mAnimate:I

    goto :goto_1
.end method
