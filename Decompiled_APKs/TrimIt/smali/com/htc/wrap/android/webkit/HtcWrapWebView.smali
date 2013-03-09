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
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
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

    .prologue
    .line 65
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 48
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 49
    return-void
.end method

.method public static setQuickSelectionButtonFlag(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "wv"
    .parameter "flag"

    .prologue
    .line 165
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$QuickSelectAbs;->setQuickSelectionButtonFlag(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public static setSmartZoomScale(FII)V
    .locals 0
    .parameter "defaultTextRatio"
    .parameter "minScale"
    .parameter "maxScale"

    .prologue
    .line 155
    sput p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->DEFAULT_TEXT_RATIO:F

    .line 156
    sput p1, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->MIN_SMARTZOOM_SCALE:I

    .line 157
    sput p2, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->MAX_SMARTZOOM_SCALE:I

    .line 158
    return-void
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/webkit/WebView;->setTabEffectType_Transition(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/webkit/WebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public disableMultiTouch()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/webkit/WebView;->disableMultiTouch()V

    .line 92
    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableHTCZoomMethod(Z)V

    .line 82
    return-void
.end method

.method public enableMultiTouch()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/webkit/WebView;->enableMultiTouch()V

    .line 87
    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableMultiTouchZoomOutToTabMode(Z)V

    .line 74
    return-void
.end method

.method public enableSmartZoom()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/webkit/WebView;->enableSmartZoom()V

    .line 70
    return-void
.end method

.method public enableTBS(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableTBS(Z)V

    .line 104
    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/webkit/WebView;->freeCacheBitmap()Z

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/webkit/WebView;->isWebCoreBlocked()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    .line 131
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

    .prologue
    .line 147
    invoke-super {p0}, Landroid/webkit/WebView;->nativeGetRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/webkit/WebView;->nativeHasRssFeed()Z

    move-result v0

    return v0
.end method

.method public resetCacheDrawBitmap()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/webkit/WebView;->resetCacheDrawBitmap()V

    .line 162
    return-void
.end method

.method public setDragAfterActionDown(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->mDragAfterActionDown:Z

    .line 152
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setIsCacheDrawBitmap(Z)V

    .line 112
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0
    .parameter "bIsLoading"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setIsLoading(Z)V

    .line 140
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setScaleWithoutCheck(Z)V

    .line 124
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "slop"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setTouchSlop(I)V

    .line 108
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 0
    .parameter "fLower"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomLowerBound(F)V

    .line 120
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 0
    .parameter "fUpper"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomUpperBound(F)V

    .line 116
    return-void
.end method
