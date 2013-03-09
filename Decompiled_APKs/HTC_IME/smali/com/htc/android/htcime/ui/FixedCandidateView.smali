.class public Lcom/htc/android/htcime/ui/FixedCandidateView;
.super Lcom/htc/android/htcime/ui/CandidateView;
.source "FixedCandidateView.java"


# static fields
.field protected static mfontSize:F

.field protected static mfontSizeMedium:F

.field protected static mfontSizeSmall:F


# instance fields
.field private final WCL_FONTSIZE_MEDIUM:I

.field private final WCL_FONTSIZE_NORMAL:I

.field private final WCL_FONTSIZE_SMALL:I

.field private final WCL_MAX_CANDIDATECOUNT_LAND:I

.field private final WCL_MAX_CANDIDATECOUNT_PORT:I

.field protected mCurrFontLevel:I

.field protected mFixedAddWordButton:Landroid/graphics/drawable/Drawable;

.field protected mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

.field protected mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

.field protected mFixedWCLBarBackground:Landroid/graphics/drawable/Drawable;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field protected mVisibleSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sget v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->sPaintFontSize:F

    sput v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSize:F

    .line 28
    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeMedium:F

    .line 29
    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeSmall:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    .line 32
    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->WCL_FONTSIZE_NORMAL:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->WCL_FONTSIZE_MEDIUM:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->WCL_FONTSIZE_SMALL:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->WCL_MAX_CANDIDATECOUNT_PORT:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->WCL_MAX_CANDIDATECOUNT_LAND:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 91
    return-void
.end method

.method private onAdjustTextSize(Ljava/lang/String;F)I
    .locals 5
    .parameter "str"
    .parameter "width"

    .prologue
    .line 62
    const/4 v1, 0x1

    .line 63
    .local v1, isCheck:Z
    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSize:F

    .line 65
    .local v2, size:F
    :goto_0
    if-eqz v1, :cond_2

    .line 66
    iget v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    packed-switch v3, :pswitch_data_0

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getTextLength(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v0

    .line 79
    .local v0, Length:F
    cmpg-float v3, v0, p2

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    .end local v0           #Length:F
    :pswitch_0
    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->sPaintFontSize:F

    .line 69
    goto :goto_1

    .line 71
    :pswitch_1
    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeMedium:F

    .line 72
    goto :goto_1

    .line 74
    :pswitch_2
    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeSmall:F

    goto :goto_1

    .line 82
    .restart local v0       #Length:F
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    goto :goto_0

    .line 86
    .end local v0           #Length:F
    :cond_2
    iget v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    return v3

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public calWCLBarWidth()I
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-super {p0}, Lcom/htc/android/htcime/ui/CandidateView;->calWCLBarWidth()I

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 334
    .local v0, imId:I
    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 335
    invoke-super {p0}, Lcom/htc/android/htcime/ui/CandidateView;->calWCLBarWidth()I

    move-result v1

    goto :goto_0

    .line 337
    .end local v0           #imId:I
    :cond_1
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-super/range {p0 .. p1}, Lcom/htc/android/htcime/ui/CandidateView;->draw(Landroid/graphics/Canvas;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mTotalWidth:I

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getHeight()I

    move-result v6

    .line 129
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 136
    :cond_2
    const/16 v18, 0x0

    .line 137
    .local v18, padding:I
    const/4 v3, 0x0

    .line 151
    .local v3, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaddingLeft:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaddingRight:I

    sub-int v26, v2, v7

    .line 152
    .local v26, width:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 153
    .local v14, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    .line 154
    .local v13, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mTouchX:I

    move/from16 v24, v0

    .line 155
    .local v24, touchX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mScrollX:I

    move/from16 v20, v0

    .line 156
    .local v20, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mScrolled:Z

    move/from16 v21, v0

    .line 157
    .local v21, scrolled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDescent:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v4, v2, 0x2

    .line 158
    .local v4, y:I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrentTouchWordIndex:I

    .line 161
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 165
    .local v16, currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 166
    .local v22, suggestion:Ljava/lang/CharSequence;
    if-nez v22, :cond_3

    .line 161
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 169
    :cond_3
    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 171
    .local v5, wordWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mWordWidth:[I

    aget v2, v2, v17

    if-nez v2, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mWordWidth:[I

    aput v5, v2, v17

    .line 175
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mWordX:[I

    aput v3, v2, v17

    .line 177
    add-int v2, v24, v20

    if-lt v2, v3, :cond_5

    add-int v2, v24, v20

    add-int v7, v3, v5

    if-ge v2, v7, :cond_5

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    .line 178
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 179
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrentTouchWordIndex:I

    .line 183
    :cond_5
    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mTypedWordValid:Z

    if-eqz v2, :cond_c

    .line 184
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrentTouchWordIndex:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_b

    .line 186
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->PRESSED_FOCUSED_STATE_SET:[I

    .line 187
    .local v15, currentState:[I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mCutIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    if-eq v2, v7, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/htcime/ui/FixedCandidateView;->updatePreviewInfo(IIIIIZ)V

    .line 213
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 214
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    :cond_7
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 223
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 224
    :cond_8
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    div-float v23, v2, v7

    .line 225
    .local v23, textOffsetX:F
    if-eqz p1, :cond_9

    .line 226
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 228
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    int-to-float v7, v3

    add-float v7, v7, v23

    int-to-float v8, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 230
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    int-to-float v7, v3

    move-object/from16 v0, v16

    iget v8, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    add-float/2addr v7, v8

    add-float v7, v7, v23

    int-to-float v8, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 237
    :cond_9
    :goto_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 238
    const/high16 v2, 0x3f80

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 240
    :cond_a
    add-int/2addr v3, v5

    goto/16 :goto_2

    .line 192
    .end local v15           #currentState:[I
    .end local v23           #textOffsetX:F
    :cond_b
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->FOCUSED_STATE_SET:[I

    .restart local v15       #currentState:[I
    goto/16 :goto_3

    .line 194
    .end local v15           #currentState:[I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectionAtButton:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_e

    .line 195
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 197
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->PRESSED_SELECTED_STATE_SET:[I

    .line 198
    .restart local v15       #currentState:[I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mCutIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    if-eq v2, v7, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSelectedIndex:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/htcime/ui/FixedCandidateView;->updatePreviewInfo(IIIIIZ)V

    goto/16 :goto_3

    .line 203
    .end local v15           #currentState:[I
    :cond_d
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->SELECTED_STATE_SET:[I

    .restart local v15       #currentState:[I
    goto/16 :goto_3

    .line 206
    .end local v15           #currentState:[I
    :cond_e
    const/high16 v2, -0x100

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    if-nez v17, :cond_f

    .line 208
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->ENABLED_STATE_SET:[I

    .restart local v15       #currentState:[I
    goto/16 :goto_3

    .line 210
    .end local v15           #currentState:[I
    :cond_f
    sget-object v15, Lcom/htc/android/htcime/ui/FixedCandidateView;->EMPTY_STATE_SET:[I

    .restart local v15       #currentState:[I
    goto/16 :goto_3

    .line 235
    .restart local v23       #textOffsetX:F
    :cond_10
    const/4 v9, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-float v2, v3

    add-float v11, v2, v23

    int-to-float v12, v4

    move-object/from16 v7, p1

    move-object/from16 v8, v22

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 244
    .end local v5           #wordWidth:I
    .end local v15           #currentState:[I
    .end local v16           #currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    .end local v22           #suggestion:Ljava/lang/CharSequence;
    .end local v23           #textOffsetX:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrentTouchWordIndex:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mUpdate:Z

    if-eqz v2, :cond_12

    .line 245
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrentTouchWordIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/android/htcime/ui/FixedCandidateView;->displayPreview(ILcom/htc/android/htcime/ui/CandidateView$PreviewInfo;)V

    .line 247
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPressedAtButton:Z

    .line 248
    if-eqz p1, :cond_15

    .line 249
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mShowDropdown:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    .line 250
    .local v25, visibleButton:Landroid/graphics/drawable/Drawable;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    .line 251
    const/16 v19, 0x0

    .line 252
    .local v19, paddingTop:I
    int-to-float v2, v3

    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/android/htcime/ui/FixedCandidateView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sget v10, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    sub-int/2addr v9, v10

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    neg-int v2, v3

    int-to-float v2, v2

    move/from16 v0, v19

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    .end local v19           #paddingTop:I
    :cond_13
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sub-int/2addr v2, v3

    sget v7, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    .line 260
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v27, v2, 0x2

    .line 261
    .local v27, y2:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mButtonStateSet:[I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 263
    move/from16 v0, v24

    if-lt v0, v3, :cond_14

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    move/from16 v0, v24

    if-ge v0, v2, :cond_14

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_14

    .line 264
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPressedAtButton:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mButtonStateSet:[I

    array-length v2, v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_14

    .line 267
    sget-object v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->PRESSED_STATE_SET:[I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 269
    :cond_14
    int-to-float v2, v3

    move/from16 v0, v27

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    neg-int v2, v3

    int-to-float v2, v2

    move/from16 v0, v27

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    add-int/2addr v3, v2

    .line 275
    .end local v25           #visibleButton:Landroid/graphics/drawable/Drawable;
    .end local v27           #y2:I
    :cond_15
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mTotalWidth:I

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mTargetScrollX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mScrollX:I

    if-eq v2, v7, :cond_0

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->scrollToTarget()V

    goto/16 :goto_0

    .line 249
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedAddWordButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    goto/16 :goto_5
.end method

.method public getTextLength(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 4
    .parameter "name"
    .parameter "paint"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [F

    .line 53
    .local v2, widthtext:[F
    const/4 v1, 0x0

    .line 54
    .local v1, sumvalues:F
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 55
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 56
    aget v3, v2, v0

    add-float/2addr v1, v3

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return v1
.end method

.method protected initRes(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedWCLBarBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedCandidateBackground:Landroid/graphics/drawable/Drawable;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    .line 292
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    .line 296
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedAddWordButton:Landroid/graphics/drawable/Drawable;

    .line 302
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedAddWordButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->FIX_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mFixedAddWordButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 307
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/htc/android/htcime/ui/FixedCandidateView;->sPaintFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mDescent:I

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeMedium:F

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSizeSmall:F

    .line 318
    return-void
.end method

.method public isFixed()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 452
    const/4 v0, 0x1

    .line 453
    .local v0, bRet:Z
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Landscape:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 454
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v3, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v3, :cond_0

    .line 458
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDragStatus()V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0}, Lcom/htc/android/htcime/ui/CandidateView;->setDragStatus()V

    .line 326
    :cond_0
    return-void
.end method

.method public setService(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter "service"
    .parameter "htcimmview"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->setService(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 48
    iput-object p1, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 49
    return-void
.end method

.method protected tweakCPWidth()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 396
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    if-nez v8, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 401
    iput v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    .line 402
    const/4 v7, 0x0

    .line 404
    .local v7, width:I
    iput v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    .line 406
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 407
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 409
    .local v6, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    if-eq v2, v10, :cond_4

    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    div-int/lit8 v4, v8, 0x2

    .line 410
    .local v4, maxWordWidth:I
    :goto_2
    invoke-virtual {v6, v4}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->isTextCompressed(I)Z

    move-result v5

    .line 411
    .local v5, textCompressed:Z
    iget v7, v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 413
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    add-int/2addr v8, v7

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    if-gt v8, v9, :cond_2

    .line 415
    if-eqz v5, :cond_5

    .line 417
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    .line 423
    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 424
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    .line 425
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_2
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int/2addr v8, v9

    sget v9, Lcom/htc/android/htcime/ui/FixedCandidateView;->MIN_WIDTH:I

    if-ge v8, v9, :cond_6

    .line 432
    .end local v4           #maxWordWidth:I
    .end local v5           #textCompressed:Z
    .end local v6           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_3
    :goto_4
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int/2addr v8, v9

    sget v9, Lcom/htc/android/htcime/ui/FixedCandidateView;->MIN_WIDTH:I

    if-le v8, v9, :cond_7

    .line 433
    new-instance v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    const-string v8, " "

    invoke-direct {v6, p0, v8}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;-><init>(Lcom/htc/android/htcime/ui/CandidateView;Ljava/lang/String;)V

    .line 434
    .restart local v6       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    sget v8, Lcom/htc/android/htcime/ui/FixedCandidateView;->MIN_WIDTH:I

    iput v8, v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 435
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sget v9, Lcom/htc/android/htcime/ui/FixedCandidateView;->MIN_WIDTH:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    goto :goto_4

    .line 409
    :cond_4
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int v4, v8, v9

    goto :goto_2

    .line 421
    .restart local v4       #maxWordWidth:I
    .restart local v5       #textCompressed:Z
    :cond_5
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    iget v9, v6, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    goto :goto_3

    .line 406
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    .end local v4           #maxWordWidth:I
    .end local v5           #textCompressed:Z
    .end local v6           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_7
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int/2addr v8, v9

    if-lez v8, :cond_9

    .line 440
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v8, v9

    add-int/lit8 v1, v8, 0x1

    .line 441
    .local v1, extraWidth:I
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .local v3, j:I
    :goto_5
    if-lez v3, :cond_9

    .line 442
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int/2addr v8, v9

    if-le v8, v1, :cond_8

    move v0, v1

    .line 443
    .local v0, additionalWidth:I
    :goto_6
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget v9, v8, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v9, v0

    iput v9, v8, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 444
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    .line 441
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 442
    .end local v0           #additionalWidth:I
    :cond_8
    iget v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    sub-int v0, v8, v9

    goto :goto_6

    .line 448
    .end local v1           #extraWidth:I
    .end local v3           #j:I
    :cond_9
    iget-object v8, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    iput v9, v8, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    goto/16 :goto_0
.end method

.method protected tweakWidth()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 343
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/htc/android/htcime/ui/FixedCandidateView;->sPaintFontSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 345
    invoke-super {p0}, Lcom/htc/android/htcime/ui/CandidateView;->tweakWidth()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v5, :cond_3

    .line 349
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v5

    iget v1, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 350
    .local v1, imId:I
    if-eqz v1, :cond_3

    const/4 v5, 0x7

    if-eq v1, v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->isHWRSip()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-eq v5, v8, :cond_3

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->tweakCPWidth()V

    goto :goto_0

    .line 356
    .end local v1           #imId:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 361
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v5, v8, :cond_4

    const/4 v2, 0x4

    .line 363
    .local v2, maxCandCount:I
    :goto_1
    iget v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mMaxWidth:I

    iput v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    .line 364
    iget v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mAccumWidth:I

    div-int v4, v5, v2

    .line 365
    .local v4, width:I
    iput v7, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    .line 370
    sget v5, Lcom/htc/android/htcime/ui/FixedCandidateView;->sPaintFontSize:F

    sput v5, Lcom/htc/android/htcime/ui/FixedCandidateView;->mfontSize:F

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v7, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mCurrFontLevel:I

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_6

    .line 375
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    move-object v3, v5

    .line 376
    .local v3, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :goto_3
    iget-object v5, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    add-int/lit8 v6, v4, -0x10

    int-to-float v6, v6

    invoke-direct {p0, v5, v6}, Lcom/htc/android/htcime/ui/FixedCandidateView;->onAdjustTextSize(Ljava/lang/String;F)I

    .line 377
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 361
    .end local v0           #i:I
    .end local v2           #maxCandCount:I
    .end local v3           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    .end local v4           #width:I
    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    .line 375
    .restart local v0       #i:I
    .restart local v2       #maxCandCount:I
    .restart local v4       #width:I
    :cond_5
    new-instance v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    const-string v5, " "

    invoke-direct {v3, p0, v5}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;-><init>(Lcom/htc/android/htcime/ui/CandidateView;Ljava/lang/String;)V

    goto :goto_3

    .line 380
    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_0

    .line 381
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleSuggestions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 382
    .restart local v3       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 384
    iget-object v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->computeWidth(Landroid/graphics/Paint;)V

    .line 385
    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->isTextCompressed(I)Z

    .line 386
    iget-object v5, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    if-nez v5, :cond_8

    const/4 v5, 0x0

    :goto_5
    iput v5, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    .line 388
    iget v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mVisibleCount:I

    .line 389
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 391
    :cond_7
    iput v4, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 386
    :cond_8
    iget-object v5, v3, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/FixedCandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getTextLength(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v5

    goto :goto_5
.end method
