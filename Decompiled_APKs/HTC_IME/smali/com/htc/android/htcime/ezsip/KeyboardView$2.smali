.class Lcom/htc/android/htcime/ezsip/KeyboardView$2;
.super Landroid/view/View;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/KeyboardView;->initPreview(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 436
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mRedrawFeedbackBG:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 442
    .local v15, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 443
    .local v14, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v7

    .line 446
    .local v7, isUpper:Z
    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentFocusIndex:I

    move/from16 v17, v0

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentFocusIndex:I

    move/from16 v17, v0

    :goto_1
    aget-object v8, v18, v17

    .line 449
    .local v8, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 450
    .local v9, keyBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 452
    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 454
    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    const/4 v13, 0x0

    .line 457
    .local v13, label:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v4, v0

    .line 458
    .local v4, KeyTextSize:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mEnlargeLowercase:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    if-nez v7, :cond_2

    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 459
    sget v17, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLOWER_CASE_INCREASE:F

    add-float v4, v4, v17

    .line 462
    :cond_2
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 463
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v4, v17, v18

    .line 465
    :cond_3
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 485
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 486
    .local v16, textWidth:F
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v11, v0

    .line 487
    .local v11, keyWidth:F
    cmpl-float v17, v16, v11

    if-lez v17, :cond_4

    .line 488
    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v12, v17, v18

    .line 489
    .local v12, key_code:I
    const/16 v17, 0xf2

    move/from16 v0, v17

    if-lt v12, v0, :cond_7

    const/16 v17, 0xf6

    move/from16 v0, v17

    if-gt v12, v0, :cond_7

    .line 490
    div-float v17, v11, v16

    const v18, 0x3f5c28f6

    mul-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 499
    .end local v12           #key_code:I
    :cond_4
    :goto_3
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    move-result v19

    add-float v18, v18, v19

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v19

    sub-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 506
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 507
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 447
    .end local v4           #KeyTextSize:F
    .end local v8           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v9           #keyBackground:Landroid/graphics/drawable/Drawable;
    .end local v11           #keyWidth:F
    .end local v13           #label:Ljava/lang/String;
    .end local v16           #textWidth:F
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 454
    .restart local v8       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v9       #keyBackground:Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$2;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/android/htcime/ezsip/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 492
    .restart local v4       #KeyTextSize:F
    .restart local v11       #keyWidth:F
    .restart local v12       #key_code:I
    .restart local v13       #label:Ljava/lang/String;
    .restart local v16       #textWidth:F
    :cond_7
    div-float v17, v11, v16

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 509
    .end local v4           #KeyTextSize:F
    .end local v11           #keyWidth:F
    .end local v12           #key_code:I
    .end local v13           #label:Ljava/lang/String;
    .end local v16           #textWidth:F
    :cond_8
    iget-object v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 510
    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 511
    .local v10, keyIcon:Landroid/graphics/drawable/Drawable;
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v5, v17, 0x2

    .line 512
    .local v5, drawableX:I
    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 513
    .local v6, drawableY:I
    int-to-float v0, v5

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 514
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 516
    iget-boolean v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 521
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 522
    const/16 v17, 0x55

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 529
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 530
    neg-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    neg-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 526
    :cond_9
    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4
.end method
