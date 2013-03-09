.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "HandwriteSeparatePadView.java"


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteSeparatePadView] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteSeparatePadView"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwriteSeparatePadView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPadHeight()I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, nRet:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v0

    .line 57
    :cond_0
    return v0
.end method

.method public getPadWidth()I
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, nRet:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getMinWidth()I

    move-result v0

    .line 66
    :cond_0
    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;I)V
    .locals 2
    .parameter "htcIMM"
    .parameter "Keyboard"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 45
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 47
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onClick(III)V
    .locals 5
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v2, p1

    .line 73
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_1

    move v1, p1

    .line 75
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 108
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 109
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, -0x30

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 114
    :cond_0
    :goto_1
    invoke-super {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onClick(III)V

    .line 115
    return-void

    .line 73
    .end local v1           #sendBtnIdx:I
    :cond_1
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 89
    .restart local v1       #sendBtnIdx:I
    :sswitch_0
    const/high16 v2, 0xf00

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->sendKeyEvent(I)V

    goto :goto_1

    .line 94
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 97
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 100
    :sswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 103
    :sswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_2
        -0x14 -> :sswitch_1
        -0x13 -> :sswitch_4
        -0x12 -> :sswitch_3
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x2026 -> :sswitch_0
        0x3002 -> :sswitch_0
        0xff01 -> :sswitch_0
        0xff0c -> :sswitch_0
        0xff1f -> :sswitch_0
    .end sparse-switch
.end method
