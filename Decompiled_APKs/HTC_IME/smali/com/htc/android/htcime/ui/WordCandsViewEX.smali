.class public Lcom/htc/android/htcime/ui/WordCandsViewEX;
.super Landroid/widget/TextView;
.source "WordCandsViewEX.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final F_SELECTED_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static final LEADING_LEN:I = 0x3

.field private static final MARK_DEBUG:Z = false

.field private static final NONE_DELIMITER:I = -0x1

.field private static final NON_SELECTED_TEXT_COLOR:I = -0x1000000

.field public static final NULL_INDEX:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final SELECTED_BACKGROUND_COLOR:I = 0x0

.field private static final SELECTED_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static final SELECTED_TEXT_COLOR:I = -0x1000000

.field private static final SPACE:Ljava/lang/String; = " "

.field public static final WCV_COUNT:I = 0x15

.field private static final W_SPACE:Ljava/lang/String; = "\u3000"


# instance fields
.field private accWidths:[S

.field private isFitViewBound:Z

.field private isMultiLine:Z

.field private mCandidates:[Ljava/lang/CharSequence;

.field private mCandsSize:I

.field private mContainer:Lcom/htc/android/htcime/ui/WordCandsListEX;

.field private mEndDelimeterPos:[I

.field private mLastLineWidth:I

.field private mRowID:[I

.field private mRowNum:I

.field private final mSpanSB:Landroid/text/SpannableStringBuilder;

.field private mStartPos:[I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVisibleLineNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->IMM_COLOR_SELECTION:I

    sput v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_BACKGROUND_COLOR:I

    .line 80
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->F_SELECTED_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 83
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_BACKGROUND_COLOR:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mStartPos:[I

    .line 51
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    .line 54
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    .line 55
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    .line 56
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    .line 57
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    .line 60
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    .line 61
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    .line 64
    const/16 v0, 0x16

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    .line 65
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    .line 90
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mLastLineWidth:I

    .line 100
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setClickable(Z)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setEnabled(Z)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setFocusableInTouchMode(Z)V

    .line 104
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setTextColor(I)V

    .line 105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    .line 107
    return-void
.end method

.method private fillToNextRow(FFI)I
    .locals 4
    .parameter "currentLineWidth"
    .parameter "delimiterWidth"
    .parameter "widthBound"

    .prologue
    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, appendCount:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    :cond_0
    return v0

    .line 155
    :cond_1
    int-to-float v2, p3

    sub-float/2addr v2, p1

    div-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    .line 454
    return-void
.end method

.method public findLineSelection(ZI)I
    .locals 7
    .parameter "toNextLine"
    .parameter "mSelectedIndex"

    .prologue
    const/4 v0, -0x1

    .line 461
    iget-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    if-eqz v5, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    move v3, v0

    .line 511
    :cond_1
    :goto_0
    return v3

    .line 464
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    aget v4, v5, p2

    .line 472
    .local v4, tmpCurrentRow:I
    if-eqz p1, :cond_3

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    if-ne v5, v6, :cond_3

    .line 474
    const/4 v3, -0x2

    goto :goto_0

    .line 475
    :cond_3
    if-nez p1, :cond_4

    if-nez v4, :cond_4

    .line 476
    const/4 v3, 0x0

    goto :goto_0

    .line 479
    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 480
    .local v0, acc:I
    :cond_5
    move v3, p2

    .line 483
    .local v3, lineStratIndx:I
    add-int/2addr v3, v0

    .line 485
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v5, v5, v3

    if-eqz v5, :cond_6

    .line 486
    add-int/2addr v3, v0

    goto :goto_1

    .line 488
    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v5, v5, p2

    if-eqz v5, :cond_7

    .line 489
    add-int/lit8 v3, v3, -0x1

    .line 490
    :goto_2
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v5, v5, v3

    if-eqz v5, :cond_7

    .line 491
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 494
    :cond_7
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    .line 498
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v5, v5, v3

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v6, v6, p2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 499
    .local v1, diff0:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    add-int/lit8 v3, v3, 0x1

    aget-short v5, v5, v3

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v6, v6, p2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 502
    .local v2, diff1:I
    :goto_3
    if-ge v2, v1, :cond_8

    .line 504
    move v1, v2

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 506
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v5, v5, v3

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v6, v6, p2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    .line 511
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getCandsSize()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    return v0
.end method

.method public getContainer()Lcom/htc/android/htcime/ui/WordCandsListEX;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mContainer:Lcom/htc/android/htcime/ui/WordCandsListEX;

    return-object v0
.end method

.method public getRowIDofIndx(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 442
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 444
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getTotalRowNum()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    return v0
.end method

.method public getVisibleLineNum()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    return v0
.end method

.method public isFitViewBound()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 624
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 538
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 539
    .local v2, tX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 541
    .local v3, tY:F
    packed-switch v0, :pswitch_data_0

    .line 584
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 543
    :pswitch_0
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 547
    .local v4, targetRow:I
    :goto_1
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v2, v6

    .line 549
    :cond_1
    const/4 v1, 0x0

    .line 550
    .local v1, tI:I
    :goto_2
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    if-ge v1, v6, :cond_2

    .line 551
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    aget v6, v6, v1

    if-ne v6, v4, :cond_4

    .line 553
    :cond_2
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    if-ge v1, v6, :cond_0

    .line 554
    :goto_3
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    aget v6, v6, v1

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v6, v6, v1

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 543
    .end local v1           #tI:I
    .end local v4           #targetRow:I
    :cond_3
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    int-to-float v6, v6

    div-float v6, v2, v6

    float-to-int v4, v6

    goto :goto_1

    .line 550
    .restart local v1       #tI:I
    .restart local v4       #targetRow:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 559
    :cond_5
    if-lez v1, :cond_6

    .line 560
    add-int/lit8 v1, v1, -0x1

    .line 563
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 564
    .local v5, tp:Landroid/text/TextPaint;
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    aget v6, v6, v1

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    aget-short v6, v6, v1

    int-to-float v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandidates:[Ljava/lang/CharSequence;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u3000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    .line 568
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setSelectedIndx(I)V

    .line 569
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mContainer:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v6, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelectionWithoutScroll(I)V

    goto/16 :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCandidates([Ljava/lang/CharSequence;)V
    .locals 27
    .parameter "candidates"

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 168
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    .line 169
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    .line 170
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mStartPos:[I

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->fill([II)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->fill([II)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    move-object/from16 v23, v0

    const/16 v24, 0x7fff

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->fill([SS)V

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandidates:[Ljava/lang/CharSequence;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandidates:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    .line 181
    const/16 v23, 0x15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 182
    .local v10, limit:I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v23, v24

    .line 185
    .local v8, height:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    const/high16 v23, 0x40c0

    div-float v23, v8, v23

    move/from16 v0, v23

    float-to-int v12, v0

    .line 186
    .local v12, lr_padding:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    shl-int/lit8 v23, v12, 0x1

    :goto_2
    sub-int v21, v24, v23

    .line 189
    .local v21, widthBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    const v23, 0x3f28f5c3

    :goto_3
    mul-float v17, v8, v23

    .line 190
    .local v17, textSize:F
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setTextSize(F)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    .line 194
    .local v19, tp:Landroid/text/TextPaint;
    const-string v23, "\u3000"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 195
    .local v20, wSpaceWidth:F
    const-string v23, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 196
    .local v15, spaceWidth:F
    const-string v23, "..."

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 201
    .local v7, ellipsisStrWidth:F
    const/4 v4, 0x0

    .line 203
    .local v4, currentLineWidth:F
    const/4 v11, 0x0

    .line 216
    .local v11, lineCount:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    if-ge v9, v10, :cond_4

    .line 217
    aget-object v16, p1, v9

    .line 218
    .local v16, st:Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 220
    .local v13, mesureWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mLastLineWidth:I

    move/from16 v21, v0

    .line 222
    :cond_2
    add-float v23, v4, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_e

    .line 223
    const/16 v23, 0x0

    cmpl-float v23, v4, v23

    if-eqz v23, :cond_3

    add-float v23, v15, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_f

    .line 232
    :cond_3
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 233
    .local v14, oneCharWidth:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    :goto_5
    add-float v23, v23, v13

    add-float v23, v23, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    div-float v23, v23, v14

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v5, v0

    .line 236
    .local v5, deletCharsNums:I
    const/16 v23, 0x0

    cmpl-float v23, v4, v23

    if-eqz v23, :cond_d

    if-lez v9, :cond_d

    .line 252
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v15, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->fillToNextRow(FFI)I

    move-result v3

    .line 256
    .local v3, appendCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    const/4 v4, 0x0

    .line 258
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_d

    .line 260
    if-ne v9, v10, :cond_c

    const/16 v23, 0x0

    :goto_7
    add-int v23, v23, v11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v3           #appendCount:I
    .end local v5           #deletCharsNums:I
    .end local v13           #mesureWidth:F
    .end local v14           #oneCharWidth:F
    .end local v16           #st:Ljava/lang/CharSequence;
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v10, -0x1

    aget v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->getLineHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-eqz v23, :cond_6

    .line 382
    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setLineSpacing(FF)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->getLineHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v8, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->floor(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v22, v0

    .line 384
    .local v22, x_padding:I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setLineSpacing(FF)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->getLineHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    sub-int v18, v23, v24

    .line 390
    .local v18, top_padding:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 392
    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v12, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setPadding(IIII)V

    .line 396
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mContainer:Lcom/htc/android/htcime/ui/WordCandsListEX;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    .end local v18           #top_padding:I
    .end local v22           #x_padding:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-super {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 185
    .end local v4           #currentLineWidth:F
    .end local v7           #ellipsisStrWidth:F
    .end local v9           #j:I
    .end local v11           #lineCount:I
    .end local v12           #lr_padding:I
    .end local v15           #spaceWidth:F
    .end local v17           #textSize:F
    .end local v19           #tp:Landroid/text/TextPaint;
    .end local v20           #wSpaceWidth:F
    .end local v21           #widthBound:I
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v12       #lr_padding:I
    :cond_8
    move/from16 v23, v12

    .line 186
    goto/16 :goto_2

    .line 189
    .restart local v21       #widthBound:I
    :cond_9
    const v23, 0x3f19999a

    goto/16 :goto_3

    .restart local v4       #currentLineWidth:F
    .restart local v7       #ellipsisStrWidth:F
    .restart local v9       #j:I
    .restart local v11       #lineCount:I
    .restart local v13       #mesureWidth:F
    .restart local v14       #oneCharWidth:F
    .restart local v15       #spaceWidth:F
    .restart local v16       #st:Ljava/lang/CharSequence;
    .restart local v17       #textSize:F
    .restart local v19       #tp:Landroid/text/TextPaint;
    .restart local v20       #wSpaceWidth:F
    :cond_a
    move/from16 v23, v15

    .line 233
    goto/16 :goto_5

    .line 256
    .restart local v3       #appendCount:I
    .restart local v5       #deletCharsNums:I
    :cond_b
    int-to-float v0, v3

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v23, v23, v4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v4, v23, v24

    goto/16 :goto_6

    .line 260
    :cond_c
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 264
    .end local v3           #appendCount:I
    :cond_d
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v5, 0x4

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 269
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 304
    .end local v5           #deletCharsNums:I
    .end local v14           #oneCharWidth:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mStartPos:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    aput v24, v23, v9

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowID:[I

    move-object/from16 v23, v0

    aput v11, v23, v9

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->accWidths:[S

    move-object/from16 v23, v0

    float-to-int v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v9

    .line 308
    add-float/2addr v4, v13

    .line 310
    add-float v23, v4, v20

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_14

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v15, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->fillToNextRow(FFI)I

    move-result v3

    .line 334
    .restart local v3       #appendCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    sub-int v24, v24, v3

    aput v24, v23, v9

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    const/4 v4, 0x0

    .line 336
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 337
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_15

    .line 338
    if-ne v9, v10, :cond_13

    const/16 v23, 0x0

    :goto_c
    add-int v23, v23, v11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    .line 339
    add-int/lit8 v9, v9, 0x1

    .line 340
    goto/16 :goto_8

    .line 265
    .end local v3           #appendCount:I
    .restart local v5       #deletCharsNums:I
    .restart local v14       #oneCharWidth:F
    :catch_0
    move-exception v6

    .line 266
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "MARKLIAO"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[WordCandsViewEX::setCandidates]: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")  st.length()="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 288
    .end local v5           #deletCharsNums:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v14           #oneCharWidth:F
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v15, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->fillToNextRow(FFI)I

    move-result v3

    .line 292
    .restart local v3       #appendCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    const/4 v4, 0x0

    .line 293
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_e

    .line 295
    if-ne v9, v10, :cond_11

    const/16 v23, 0x0

    :goto_e
    add-int v23, v23, v11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mRowNum:I

    goto/16 :goto_8

    .line 292
    :cond_10
    int-to-float v0, v3

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v23, v23, v4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v4, v23, v24

    goto :goto_d

    .line 295
    :cond_11
    const/16 v23, 0x1

    goto :goto_e

    .line 335
    :cond_12
    int-to-float v0, v3

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v23, v23, v4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v4, v23, v24

    goto/16 :goto_b

    .line 338
    :cond_13
    const/16 v23, 0x1

    goto/16 :goto_c

    .line 343
    .end local v3           #appendCount:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    const-string v24, "\u3000"

    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aput v24, v23, v9

    .line 345
    add-float v4, v4, v20

    .line 216
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 394
    .end local v13           #mesureWidth:F
    .end local v16           #st:Ljava/lang/CharSequence;
    .restart local v18       #top_padding:I
    .restart local v22       #x_padding:I
    :cond_16
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v12, v2}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setPadding(IIII)V

    goto/16 :goto_9
.end method

.method public setContainer(Lcom/htc/android/htcime/ui/WordCandsListEX;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mContainer:Lcom/htc/android/htcime/ui/WordCandsListEX;

    .line 599
    return-void
.end method

.method public setFitViewBound(Z)V
    .locals 0
    .parameter "isFitViewBound"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isFitViewBound:Z

    .line 614
    return-void
.end method

.method public setLastWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 632
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mLastLineWidth:I

    .line 633
    return-void
.end method

.method public setSelectedIndx(I)V
    .locals 5
    .parameter "indx"

    .prologue
    const/16 v4, 0x21

    .line 114
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mCandsSize:I

    if-lt p1, v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/android/htcime/ui/WordCandsViewEX;->F_SELECTED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mEndDelimeterPos:[I

    aget v0, v2, p1

    .line 121
    .local v0, endPos:I
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mStartPos:[I

    aget v1, v2, p1

    .line 129
    .local v1, startPos:I
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/android/htcime/ui/WordCandsViewEX;->F_SELECTED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setUnSelected()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->F_SELECTED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsViewEX;->SELECTED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewHeight(I)V
    .locals 0
    .parameter "viewHeight"

    .prologue
    .line 438
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewHeight:I

    .line 439
    return-void
.end method

.method public setViewWidth(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 525
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mViewWidth:I

    .line 526
    return-void
.end method

.method public setVisibleLineNum(I)V
    .locals 3
    .parameter "visibleLineNum"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 419
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mVisibleLineNum:I

    .line 420
    if-le p1, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    .line 421
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->isMultiLine:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsViewEX;->setSingleLine(Z)V

    .line 425
    return-void

    :cond_0
    move v0, v2

    .line 420
    goto :goto_0

    :cond_1
    move v1, v2

    .line 421
    goto :goto_1
.end method

.method public updateText()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsViewEX;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method
