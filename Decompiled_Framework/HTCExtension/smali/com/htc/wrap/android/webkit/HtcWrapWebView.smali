.class public Lcom/htc/wrap/android/webkit/HtcWrapWebView;
.super Landroid/webkit/WebView;
.source "HtcWrapWebView.java"


# static fields
.field public static final QuickSelect_ADDR_BUTTON_SET:I = 0x47

.field public static final QuickSelect_COPY_BUTTON_ONLY:I = 0x1

.field public static final QuickSelect_DEFAULT_BUTTON_SET:I = 0x46

.field public static final QuickSelect_PHONE_BUTTON_SET:I = 0x48


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method public static setQuickSelectionButtonFlag(Landroid/webkit/WebView;I)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$QuickSelectAbs;->setQuickSelectionButtonFlag(I)V

    :cond_0
    return-void
.end method

.method public static setSmartZoomScale(FII)V
    .locals 0

    sput p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->DEFAULT_TEXT_RATIO:F

    sput p1, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->MIN_SMARTZOOM_SCALE:I

    sput p2, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->MAX_SMARTZOOM_SCALE:I

    return-void
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0

    invoke-static {p0}, Landroid/webkit/WebView;->setTabEffectType_Transition(I)V

    return-void
.end method


# virtual methods
.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method public disableMultiTouch()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->disableMultiTouch()V

    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableHTCZoomMethod(Z)V

    return-void
.end method

.method public enableMultiTouch()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->enableMultiTouch()V

    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableMultiTouchZoomOutToTabMode(Z)V

    return-void
.end method

.method public enableSmartZoom()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->enableSmartZoom()V

    return-void
.end method

.method public enableTBS(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableTBS(Z)V

    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->freeCacheBitmap()Z

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->isWebCoreBlocked()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->isWebCoreBusy()Z

    move-result v0

    return v0
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Landroid/webkit/WebView;->nativeGetRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->nativeHasRssFeed()Z

    move-result v0

    return v0
.end method

.method public resetCacheDrawBitmap()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->resetCacheDrawBitmap()V

    return-void
.end method

.method public setDragAfterActionDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->mDragAfterActionDown:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setIsCacheDrawBitmap(Z)V

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setIsLoading(Z)V

    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setScaleWithoutCheck(Z)V

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setTouchSlop(I)V

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomLowerBound(F)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomUpperBound(F)V

    return-void
.end method
