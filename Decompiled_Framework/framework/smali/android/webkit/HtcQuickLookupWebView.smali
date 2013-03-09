.class public Landroid/webkit/HtcQuickLookupWebView;
.super Landroid/webkit/WebView;
.source "HtcQuickLookupWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;
    }
.end annotation


# instance fields
.field private mHorizontalOffset:I

.field private mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

.field private mVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/HtcQuickLookupWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {p0, v2}, Landroid/webkit/HtcQuickLookupWebView;->setScrollbarFadingEnabled(Z)V

    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/HtcQuickLookupWebView;->setHorizontalScrollBarEnabled(Z)V

    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    return-void
.end method


# virtual methods
.method public emulateShiftHeld()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->emulateShiftHeld()V

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->setQuickSelectionButtonFlag(I)V

    :cond_0
    return-void
.end method

.method public getHTCWebCore()Landroid/webkit/HTCWebCore;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getHTCWebCore()Landroid/webkit/HTCWebCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTCWebCore;->nativeGetHeaderRect(Landroid/graphics/Rect;)I

    return-object v0
.end method

.method public getTableRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getHTCWebCore()Landroid/webkit/HTCWebCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTCWebCore;->nativeGetGDInputBoxRect(Landroid/graphics/Rect;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method protected getTitleHeight()I
    .locals 2

    iget v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    invoke-super {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onWebViewLayoutChanged(II)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    invoke-interface {v0, p1, p2}, Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;->onWebViewLayoutChanged(II)V

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    return-void
.end method

.method public setTextReflowProp(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewCore;->setTextwrapWithProp(F)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    return-void
.end method

.method public setWebViewLayoutChangedClient(Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    return-void
.end method
