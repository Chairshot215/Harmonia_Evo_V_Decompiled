.class public Lcom/android/htcdialer/widget/AccumulatorText;
.super Landroid/widget/EditText;
.source "AccumulatorText.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccumulatorText"


# instance fields
.field private isTextPasted:Z

.field private mCursorVisible:Z

.field private mDisplayLable:Landroid/text/SpannableStringBuilder;

.field private mEvent:Landroid/view/KeyEvent;

.field private mIndex:I

.field private mMaxIndex:I

.field private mMetaState:I

.field private mNeedLayout:Z

.field private mNumber:Landroid/text/SpannableStringBuilder;

.field private mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSizes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/widget/AccumulatorText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/widget/AccumulatorText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    .line 60
    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMaxIndex:I

    .line 63
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNeedLayout:Z

    .line 69
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    .line 70
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    .line 74
    iput-boolean v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mCursorVisible:Z

    .line 76
    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMetaState:I

    .line 337
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->isTextPasted:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextPaint:Landroid/text/TextPaint;

    .line 89
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->initTextSize()V

    .line 91
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->enableHtcTextSelection(ZI)V

    .line 94
    return-void
.end method

.method private decreaceTextSize(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSize(F)V

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpDisplayLableLog()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method private getTextWidth(Ljava/lang/CharSequence;)F
    .locals 9
    .parameter "text"

    .prologue
    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 132
    .local v2, len:I
    new-array v6, v2, [F

    .line 133
    .local v6, widths:[F
    iget-object v7, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v2, v6}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 134
    const/4 v4, 0x0

    .line 136
    .local v4, textWidth:F
    move-object v0, v6

    .local v0, arr$:[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v5, v0, v1

    .line 137
    .local v5, width:F
    add-float/2addr v4, v5

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v5           #width:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    return v7
.end method

.method private increaceTextSize(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 149
    iget v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    iget v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMaxIndex:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSize(F)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSize(F)V

    .line 157
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initTextSize()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMaxIndex:I

    iput v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    .line 167
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSize(F)V

    goto :goto_0
.end method

.method private recursiveAdjustTextSize(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->initTextSize()V

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->decreaceTextSize(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    return-void

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isPasteText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-boolean v1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->isTextPasted:Z

    if-eqz v1, :cond_0

    .line 341
    iput-boolean v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->isTextPasted:Z

    .line 342
    const/4 v0, 0x1

    .line 344
    :cond_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNeedLayout:Z

    .line 110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 382
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x43

    if-eq v2, v3, :cond_0

    invoke-static {p2}, Lcom/android/htcdialer/util/KeyEventUtils;->isSearchable(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    .line 390
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/util/KeyEventUtils;->isChaChaAttCid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v1

    .line 392
    .local v1, st:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionEnd()I

    move-result v0

    .line 393
    .local v0, en:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 396
    .end local v0           #en:I
    .end local v1           #st:I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 385
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 178
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 181
    iget-boolean v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNeedLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->recursiveAdjustTextSize(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNeedLayout:Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/16 v6, 0x43

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 201
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v5

    if-nez v5, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v5

    iput v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMetaState:I

    .line 205
    iget v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMetaState:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMetaState:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    :cond_0
    move v0, v3

    .line 208
    .local v0, alt:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mCursorVisible:Z

    if-eqz v5, :cond_5

    .line 209
    iget-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 210
    iget-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 211
    iget-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    iput-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    .line 212
    iput-object v8, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    .line 253
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->dumpDisplayLableLog()V

    .line 256
    .end local v0           #alt:Z
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 258
    iget-object v2, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    if-eqz v2, :cond_3

    if-nez p1, :cond_10

    .line 277
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 205
    goto :goto_0

    .line 215
    .restart local v0       #alt:Z
    :cond_5
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v6, :cond_a

    if-le p4, p3, :cond_a

    .line 216
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    invoke-static {v5, v0}, Lcom/android/htcdialer/util/KeyEventUtils;->getPhoneLable(Landroid/view/KeyEvent;Z)I

    move-result v1

    .line 217
    .local v1, c:I
    sub-int v5, p4, p3

    if-ne v5, v3, :cond_7

    .line 218
    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 220
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_8

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 222
    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_9

    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    :goto_4
    iput-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 226
    iput-object v8, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    .line 227
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->dumpDisplayLableLog()V

    goto :goto_2

    .line 220
    :cond_8
    int-to-char v3, v1

    goto :goto_3

    .line 222
    :cond_9
    iget-object v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 232
    .end local v1           #c:I
    :cond_a
    if-le p3, p4, :cond_1

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 234
    if-nez p2, :cond_c

    if-nez p4, :cond_c

    .line 235
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 236
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 237
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    iput-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    .line 250
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v4, v2, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 240
    :cond_c
    sub-int v5, p3, p4

    if-eq v5, v3, :cond_d

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 242
    :cond_d
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 243
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 244
    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNumber:Landroid/text/SpannableStringBuilder;

    :goto_6
    iput-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mText:Landroid/text/SpannableStringBuilder;

    .line 246
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    if-eqz v4, :cond_b

    .line 247
    iput-object v8, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mEvent:Landroid/view/KeyEvent;

    goto :goto_5

    .line 244
    :cond_f
    iget-object v4, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mDisplayLable:Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 262
    .end local v0           #alt:Z
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 263
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->initTextSize()V

    goto/16 :goto_2

    .line 267
    :cond_11
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getWidth()I

    move-result v2

    if-nez v2, :cond_12

    .line 268
    iput-boolean v3, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mNeedLayout:Z

    goto/16 :goto_2

    .line 269
    :cond_12
    sub-int v2, p4, p3

    if-ne v2, v3, :cond_13

    .line 270
    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->decreaceTextSize(Ljava/lang/CharSequence;)Z

    goto/16 :goto_2

    .line 271
    :cond_13
    sub-int v2, p3, p4

    if-ne v2, v3, :cond_14

    .line 272
    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->increaceTextSize(Ljava/lang/CharSequence;)Z

    goto/16 :goto_2

    .line 274
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/htcdialer/widget/AccumulatorText;->recursiveAdjustTextSize(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 349
    const v7, 0x1020022

    if-ne p1, v7, :cond_1

    .line 350
    iput-boolean v6, p0, Lcom/android/htcdialer/widget/AccumulatorText;->isTextPasted:Z

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, min:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v1

    .line 355
    .local v1, max:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v5

    .line 356
    .local v5, selStart:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionEnd()I

    move-result v4

    .line 358
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 359
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 361
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 363
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 365
    .local v3, paste:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 368
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->stopTextSelectionMode()V

    .line 372
    .end local v0           #clip:Landroid/text/ClipboardManager;
    .end local v1           #max:I
    .end local v2           #min:I
    .end local v3           #paste:Ljava/lang/CharSequence;
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v6

    goto :goto_0
.end method

.method public setCursorVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mCursorVisible:Z

    .line 403
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 404
    return-void
.end method

.method public setTextSizes(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSizes([I)V

    .line 316
    return-void
.end method

.method public setTextSizes([I)V
    .locals 1
    .parameter "fontSizes"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    .line 327
    iget-object v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mTextSizes:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/widget/AccumulatorText;->mMaxIndex:I

    .line 328
    invoke-direct {p0}, Lcom/android/htcdialer/widget/AccumulatorText;->initTextSize()V

    .line 329
    return-void
.end method
