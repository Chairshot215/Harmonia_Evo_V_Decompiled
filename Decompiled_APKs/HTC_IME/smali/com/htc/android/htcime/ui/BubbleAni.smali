.class public Lcom/htc/android/htcime/ui/BubbleAni;
.super Ljava/lang/Object;
.source "BubbleAni.java"


# instance fields
.field protected ButtonNegative:Landroid/widget/Button;

.field protected ButtonPositive:Landroid/widget/Button;

.field final DEBUG:Z

.field a:Landroid/view/animation/Animation;

.field aniV:Landroid/view/View;

.field arrowDown:Z

.field bubbleBackground:Landroid/graphics/drawable/Drawable;

.field dismissOnClose:Z

.field dismissOnTouch:Z

.field gravity:I

.field height:I

.field inputView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mHeight:I

.field mLLYN:Landroid/widget/LinearLayout;

.field text:Ljava/lang/String;

.field textView:Landroid/widget/TextView;

.field width:I

.field protected window:Landroid/widget/PopupWindow;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZ)V
    .locals 7
    .parameter "context"
    .parameter "inputView"
    .parameter "backgroundResource"
    .parameter "bx"
    .parameter "by"
    .parameter "bw"
    .parameter "gravity"
    .parameter "text"
    .parameter "dismissOnTouch"
    .parameter "dismissOnClose"
    .parameter "calH"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mHeight:I

    .line 63
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->a:Landroid/view/animation/Animation;

    .line 64
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->aniV:Landroid/view/View;

    .line 67
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    .line 68
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->height:I

    .line 69
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->arrowDown:Z

    .line 70
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->DEBUG:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v3, scale:F
    iput p4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->x:I

    .line 80
    iput p5, p0, Lcom/htc/android/htcime/ui/BubbleAni;->y:I

    .line 81
    int-to-float v4, p6

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    .line 82
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->arrowDown:Z

    .line 84
    iput p7, p0, Lcom/htc/android/htcime/ui/BubbleAni;->gravity:I

    .line 85
    iput-object p8, p0, Lcom/htc/android/htcime/ui/BubbleAni;->text:Ljava/lang/String;

    .line 86
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->dismissOnTouch:Z

    .line 87
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->dismissOnClose:Z

    .line 88
    iput-object p2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    .line 89
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    .line 90
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const v5, 0x1030004

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 93
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 97
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    .line 98
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    const/high16 v5, 0x7f0e

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    .line 101
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0001

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->aniV:Landroid/view/View;

    .line 105
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->aniV:Landroid/view/View;

    const v5, 0x7f020010

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mLLYN:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 110
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 111
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 112
    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 113
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "parentView"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 116
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 117
    .local v11, wid:I
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 123
    .local v8, ht:I
    iget v1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    sub-int v3, v1, v11

    .line 125
    .local v3, cap:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 127
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 128
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 129
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 128
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 135
    iget v1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 136
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x15

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 137
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->height:I

    .line 138
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 190
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)Lcom/htc/android/htcime/ui/BubbleAni;
    .locals 1
    .parameter "text"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-object p0
.end method

.method public setTextGravity(I)Lcom/htc/android/htcime/ui/BubbleAni;
    .locals 1
    .parameter "gravity"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    return-object p0
.end method

.method public setTextHeight(I)Lcom/htc/android/htcime/ui/BubbleAni;
    .locals 0
    .parameter "height"

    .prologue
    .line 205
    iput p1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->mHeight:I

    .line 206
    return-object p0
.end method

.method public setTextSize(F)Lcom/htc/android/htcime/ui/BubbleAni;
    .locals 2
    .parameter "s"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    return-object p0
.end method

.method public show(II)V
    .locals 7
    .parameter "offx"
    .parameter "offy"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/BubbleAni;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 142
    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 145
    :try_start_0
    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->gravity:I

    and-int/lit8 v2, v2, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    .line 146
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->gravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 147
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->x:I

    add-int v0, v2, p1

    .line 148
    .local v0, tx:I
    if-gez v0, :cond_5

    move v0, v1

    .line 149
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/android/htcime/ui/BubbleAni;->y:I

    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/BubbleAni;->arrowDown:Z

    if-eqz v6, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/ui/BubbleAni;->height:I

    :cond_3
    sub-int v1, v5, v1

    add-int/2addr v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 154
    .end local v0           #tx:I
    :cond_4
    :goto_1
    return-void

    .line 148
    .restart local v0       #tx:I
    :cond_5
    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    add-int/2addr v2, v0

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v2, v3, :cond_2

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, v2, v3

    goto :goto_0

    .line 150
    .end local v0           #tx:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public show(IIII)V
    .locals 8
    .parameter "offx"
    .parameter "offy"
    .parameter "aniFromX"
    .parameter "aniToX"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/BubbleAni;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/BubbleAni;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/htc/android/htcime/ui/BubbleAni;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 165
    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 168
    :try_start_0
    iget v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->gravity:I

    and-int/lit8 v3, v3, 0x50

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr p2, v3

    .line 169
    :cond_0
    iget v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->gravity:I

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr p1, v3

    .line 170
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->x:I

    add-int v1, v3, p1

    .line 171
    .local v1, tx:I
    if-gez v1, :cond_5

    move v1, v2

    .line 172
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->inputView:Landroid/view/View;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/android/htcime/ui/BubbleAni;->y:I

    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/BubbleAni;->arrowDown:Z

    if-eqz v7, :cond_3

    iget v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->height:I

    :cond_3
    sub-int v2, v6, v2

    add-int/2addr v2, p2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 173
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p3

    int-to-float v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 174
    .local v0, an:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    iget-object v2, p0, Lcom/htc/android/htcime/ui/BubbleAni;->aniV:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    .end local v0           #an:Landroid/view/animation/Animation;
    .end local v1           #tx:I
    :cond_4
    :goto_1
    return-void

    .line 171
    .restart local v1       #tx:I
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I

    add-int/2addr v3, v1

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v3, v4, :cond_2

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v4, p0, Lcom/htc/android/htcime/ui/BubbleAni;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v3, v4

    goto :goto_0

    .line 179
    .end local v1           #tx:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
