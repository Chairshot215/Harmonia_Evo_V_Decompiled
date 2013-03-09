.class public Lcom/htc/android/htcime/ui/HTCExtractEditText;
.super Landroid/inputmethodservice/ExtractEditText;
.source "HTCExtractEditText.java"


# static fields
.field private static sSTATUS_BAR_HEIGHT:I


# instance fields
.field private mCursorRect:Landroid/graphics/Rect;

.field private mData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mSysCursorRectInWindow:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->sSTATUS_BAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/android/htcime/util/SIPUtils;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 42
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 43
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 44
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 45
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/android/htcime/util/SIPUtils;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 42
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 43
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 44
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 45
    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    .line 57
    invoke-static {p0}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->initInputMethodState(Landroid/widget/TextView;)V

    .line 58
    invoke-static {p0}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    .line 61
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->sSTATUS_BAR_HEIGHT:I

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 117
    iget-object v0, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object p1, v0, Lcom/htc/android/htcime/HTCIMMData;->mExactViewMenu:Landroid/view/ContextMenu;

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mSysCursorRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 89
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 92
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 104
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLVisible_ID(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 105
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0           #i:I
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ui/HTCExtractEditText;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    sget v2, Lcom/htc/android/htcime/ui/HTCExtractEditText;->sSTATUS_BAR_HEIGHT:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 126
    and-int/lit16 v0, p1, 0xff0

    .line 127
    .local v0, variation:I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 128
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/HTCExtractEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 130
    :cond_0
    return-void
.end method
