.class public Landroid/webkit/HTCWebCore;
.super Ljava/lang/Object;
.source "HTCWebCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTCWebCore$PositionRect;,
        Landroid/webkit/HTCWebCore$SelectionType;,
        Landroid/webkit/HTCWebCore$EditEventHub;
    }
.end annotation


# static fields
.field static suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;


# instance fields
.field private mAnchorSpanCallback:Landroid/os/Message;

.field private mClipboard:Landroid/content/ClipboardManager;

.field private mCopiedStyleText:Ljava/lang/String;

.field mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

.field private mSkipClipboardChang:Z

.field private mWebCore:Landroid/webkit/WebViewCore;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    sput-object v0, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkit/HTCWebCore$EditEventHub;

    invoke-direct {v0, p0}, Landroid/webkit/HTCWebCore$EditEventHub;-><init>(Landroid/webkit/HTCWebCore;)V

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    iput-object p2, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/webkit/WebViewCore;->setHTCWebCore(Landroid/webkit/HTCWebCore;)V

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCWebCore;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeModifySelection(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HTCWebCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeDoWordSelection(II)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/HTCWebCore;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCore;->nativeDeleteSurrounding(IIIII)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetHtmlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/HTCWebCore;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->nativeInsertImage(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeInformColorChanged()V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCopy()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/HTCWebCore;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->nativeDoSelection(IIZ)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCut()V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2502(Landroid/webkit/HTCWebCore;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertAnchorSpan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCancelAnchorSpan()V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleBold()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTCWebCore;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleUnderline()V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleItalic()V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleStrikethrough()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignCenter()V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignJustified()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignLeft()V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/HTCWebCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignRight()V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetForeColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetBackColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/HTCWebCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetFontSize(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebViewCore;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/HTCWebCore;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTCWebCore;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeShouldPaintingCaret(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/HTCWebCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeInsert(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V

    return-void
.end method

.method private doAnchorSpanCallBack(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "KENLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback => [HTCWebCore.java] doAnchorSpanCallBack :: R = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static final isTablet()Z
    .locals 1

    invoke-static {}, Landroid/webkit/HTCWebCore;->isTabletLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/HTCWebCore;->isTabletXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isTabletLarge()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isTabletXLarge()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAlignCenter()V
.end method

.method private native nativeAlignJustified()V
.end method

.method private native nativeAlignLeft()V
.end method

.method private native nativeAlignRight()V
.end method

.method private native nativeCancelAnchorSpan()V
.end method

.method private native nativeComposing(ILjava/lang/String;IIII)V
.end method

.method private native nativeCopy()V
.end method

.method private native nativeCut()V
.end method

.method private native nativeDeleteSurrounding(IIIII)V
.end method

.method private native nativeDoSelection(IIZ)V
.end method

.method private native nativeDoSelectionByIndex(IIII)V
.end method

.method private native nativeDoWordSelection(II)V
.end method

.method private native nativeExportHtml(Ljava/lang/String;)Z
.end method

.method private native nativeGetCopiedPlainText()Ljava/lang/String;
.end method

.method private native nativeGetCopiedStyleText()Ljava/lang/String;
.end method

.method private native nativeGetHtmlString()Ljava/lang/String;
.end method

.method private native nativeInformColorChanged()V
.end method

.method private native nativeInsert(ILjava/lang/String;)V
.end method

.method private native nativeInsertAnchorSpan(Ljava/lang/String;)V
.end method

.method private native nativeInsertHtml(Ljava/lang/String;)Z
.end method

.method private native nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z
.end method

.method private native nativeInsertHtmlString(Ljava/lang/String;)Z
.end method

.method private native nativeInsertImage(Ljava/lang/String;II)V
.end method

.method private native nativeModifySelection(Z)V
.end method

.method private native nativePastePlainText(Ljava/lang/String;)V
.end method

.method private native nativePasteWithStyle(Ljava/lang/String;)V
.end method

.method private native nativeSetBackColor(Ljava/lang/String;)V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFontSize(I)V
.end method

.method private native nativeSetForeColor(Ljava/lang/String;)V
.end method

.method private native nativeShouldPaintingCaret(Z)V
.end method

.method private native nativeToggleBold()V
.end method

.method private native nativeToggleItalic()V
.end method

.method private native nativeToggleStrikethrough()V
.end method

.method private native nativeToggleUnderline()V
.end method


# virtual methods
.method public drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 2

    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    return-object v0
.end method

.method public getCopiedStyleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v7, 0x0

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v8, v9}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/high16 v4, 0x3f80

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    int-to-float v8, p2

    mul-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    int-to-float v8, p3

    mul-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v7, 0x0

    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget v8, v3, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v0}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "HtcWebCore"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_1
.end method

.method public isSkipClipboardChang()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    return v0
.end method

.method public isThisWebCoreBlocked()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->isThisWebCoreBlocked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebCoreBlocked()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40e5f90000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method native nativeContentInvalidate(Landroid/graphics/Rect;)V
.end method

.method public native nativeEnableGifAnimation(Z)V
.end method

.method native nativeEnableTextReflowWithBreakWords(Z)V
.end method

.method native nativeFindContinuousBRFromEnd(I)I
.end method

.method public nativeFindNextTableNode(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HTCWebCore;->nativeFindNextTableNode(IZ)I

    move-result v0

    return v0
.end method

.method public native nativeFindNextTableNode(IZ)I
.end method

.method public native nativeFindNextTextNode(I)I
.end method

.method public native nativeFindParagraphBound(IIZLandroid/graphics/Rect;)I
.end method

.method public native nativeFindParagraphBoundByNode(IZLandroid/graphics/Rect;)V
.end method

.method public native nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
.end method

.method public native nativeForceStopGifAnimation(Z)V
.end method

.method native nativeGetAllAnchorSpan()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeGetAnchorRect(Landroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetBackColor()Ljava/lang/String;
.end method

.method public native nativeGetBodyNode(ILandroid/graphics/Rect;)I
.end method

.method native nativeGetBoldState()I
.end method

.method public native nativeGetCharRect(IILandroid/graphics/Rect;)Z
.end method

.method public native nativeGetCursorPos(IILandroid/graphics/Rect;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native nativeGetFontPixelSizeOfTextNode(I)I
.end method

.method native nativeGetFontSize()I
.end method

.method native nativeGetForeColor()Ljava/lang/String;
.end method

.method native nativeGetGDInputBoxRect(Landroid/graphics/Rect;)I
.end method

.method public native nativeGetHREF(I)Ljava/lang/String;
.end method

.method native nativeGetHeaderRect(Landroid/graphics/Rect;)I
.end method

.method native nativeGetItalicState()I
.end method

.method public native nativeGetMaxCPUFreq()J
.end method

.method public native nativeGetNodeRect(IZI)Landroid/graphics/Rect;
.end method

.method native nativeGetRectOf(Landroid/graphics/Rect;I)V
.end method

.method public native nativeGetRssFeed()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeGetScopeNode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method native nativeGetStrikethroughState()I
.end method

.method public native nativeGetSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method public native nativeGetTextBetween(IIII)Ljava/lang/String;
.end method

.method native nativeGetUnderlineState()I
.end method

.method native nativeGetVSbound(Landroid/graphics/Rect;)I
.end method

.method native nativeGetWordRange(IILandroid/graphics/Point;)V
.end method

.method public native nativeHasRssFeed()Z
.end method

.method native nativeInsertHtmlToTheEnd(Ljava/lang/String;)V
.end method

.method public native nativeIsSupportGifAnimUISetting()Z
.end method

.method public native nativeIsTextNode(II)I
.end method

.method public native nativeSaveImage(IILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public native nativeSelectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
.end method

.method public native nativeSetSkiaFontCacheSize(J)V
.end method

.method native nativeSetTextUrlDetection(Z)V
.end method

.method public native nativeSmartTouchUp(II)I
.end method

.method public native nativeTrimMemory()V
.end method

.method public native nativeisImageNode(I)Z
.end method

.method public native nativeisTextNode(I)Z
.end method

.method public setCopiedStyleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-void
.end method

.method public setSkipClipboardChang(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    return-void
.end method
