.class public Lcom/htc/android/htcime/ui/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"


# instance fields
.field protected ButtonNegative:Landroid/widget/Button;

.field protected ButtonPositive:Landroid/widget/Button;

.field final DEBUG:Z

.field DT:I

.field protected PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

.field SHIFTX:I

.field arrowDown:Z

.field arrowPos:I

.field bubbleBackground:Landroid/graphics/drawable/Drawable;

.field dismissOnClose:Z

.field dismissOnTouch:Z

.field gravity:I

.field height:I

.field inputView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mHeight:I

.field mLLYN:Landroid/widget/LinearLayout;

.field protected mPaddingHeight:I

.field protected mPaddingWidth:I

.field mShiftX:I

.field scale:F

.field text:Ljava/lang/String;

.field textView:Landroid/widget/TextView;

.field width:I

.field protected window:Landroid/widget/PopupWindow;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "inputView"
    .parameter "backgroundResource"
    .parameter "bx"
    .parameter "by"
    .parameter "bw"
    .parameter "gravity"
    .parameter "text"
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mHeight:I

    .line 65
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v3, :cond_0

    const/16 v3, 0xa

    :goto_0
    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    .line 66
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    .line 71
    const/16 v3, 0x17

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowPos:I

    .line 74
    const/16 v3, 0x1e

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 75
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    .line 77
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DEBUG:Z

    .line 406
    new-instance v3, Lcom/htc/android/htcime/ui/Bubble$1;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/ui/Bubble$1;-><init>(Lcom/htc/android/htcime/ui/Bubble;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    .line 173
    iput p4, p0, Lcom/htc/android/htcime/ui/Bubble;->x:I

    .line 174
    iput p5, p0, Lcom/htc/android/htcime/ui/Bubble;->y:I

    .line 175
    int-to-float v3, p6

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    .line 176
    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    .line 177
    iput p7, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    .line 178
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    .line 179
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnTouch:Z

    .line 180
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnClose:Z

    .line 181
    iput-object p2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    .line 182
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    .line 183
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 185
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 186
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 187
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const v4, 0x1030004

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 188
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 191
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    .line 192
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    const/high16 v4, 0x7f0e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    .line 196
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    const v4, 0x7f0a0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    .line 201
    if-eqz p9, :cond_2

    .line 202
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    const v4, 0x7f0a0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 204
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    const v4, 0x7f02011d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 206
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    iget v5, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    iget v6, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 212
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0003

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    .line 213
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    const v4, 0x7f0a0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 215
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    const v4, 0x7f02011d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 217
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    iget v5, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    iget v6, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 219
    iput-object p1, p0, Lcom/htc/android/htcime/ui/Bubble;->mContext:Landroid/content/Context;

    .line 220
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 222
    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 223
    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 224
    return-void

    .line 65
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/16 v3, 0x11

    goto/16 :goto_0

    .line 66
    :cond_1
    const/4 v3, 0x7

    goto/16 :goto_1

    .line 209
    .restart local v1       #inflate:Landroid/view/LayoutInflater;
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZ)V
    .locals 4
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

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mHeight:I

    .line 65
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v2, :cond_0

    const/16 v2, 0xa

    :goto_0
    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    .line 66
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    .line 69
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    .line 71
    const/16 v2, 0x17

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 73
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowPos:I

    .line 74
    const/16 v2, 0x1e

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/Bubble;->DEBUG:Z

    .line 406
    new-instance v2, Lcom/htc/android/htcime/ui/Bubble$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ui/Bubble$1;-><init>(Lcom/htc/android/htcime/ui/Bubble;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    .line 86
    iput p4, p0, Lcom/htc/android/htcime/ui/Bubble;->x:I

    .line 87
    iput p5, p0, Lcom/htc/android/htcime/ui/Bubble;->y:I

    .line 88
    int-to-float v2, p6

    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    .line 89
    iput p7, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    .line 90
    iput-object p8, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    .line 91
    iput-boolean p9, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnTouch:Z

    .line 92
    iput-boolean p10, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnClose:Z

    .line 93
    iput-object p2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    .line 94
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    .line 95
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const v3, 0x1030004

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 98
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 101
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    const v3, 0x7f0a0035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 107
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 108
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 109
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 110
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 111
    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 112
    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 113
    return-void

    .line 65
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const/16 v2, 0x11

    goto/16 :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x7

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V
    .locals 5
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
    .parameter "pos"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mHeight:I

    .line 65
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v3, :cond_0

    const/16 v3, 0xa

    :goto_0
    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingWidth:I

    .line 66
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mPaddingHeight:I

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    .line 71
    const/16 v3, 0x17

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowPos:I

    .line 74
    const/16 v3, 0x1e

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 75
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    .line 77
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DEBUG:Z

    .line 406
    new-instance v3, Lcom/htc/android/htcime/ui/Bubble$1;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/ui/Bubble$1;-><init>(Lcom/htc/android/htcime/ui/Bubble;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    .line 122
    iput p4, p0, Lcom/htc/android/htcime/ui/Bubble;->x:I

    .line 123
    iput p5, p0, Lcom/htc/android/htcime/ui/Bubble;->y:I

    .line 124
    int-to-float v3, p6

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    .line 125
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    .line 126
    move/from16 v0, p12

    iput v0, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowPos:I

    .line 127
    iput p7, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    .line 128
    iput-object p8, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    .line 129
    iput-boolean p9, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnTouch:Z

    .line 130
    iput-boolean p10, p0, Lcom/htc/android/htcime/ui/Bubble;->dismissOnClose:Z

    .line 131
    iput-object p2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    .line 132
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    .line 133
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const v4, 0x1030004

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 136
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 139
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    .line 140
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    const v4, 0x7f0a0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 146
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 147
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 148
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 150
    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    .line 151
    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    .line 152
    return-void

    .line 65
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/16 v3, 0x11

    goto/16 :goto_0

    .line 66
    :cond_1
    const/4 v3, 0x7

    goto/16 :goto_1
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 11
    .parameter "pop"
    .parameter "parentView"
    .parameter "text"
    .parameter "tv"

    .prologue
    const/4 v10, 0x0

    .line 227
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v9, v1, v2

    .line 228
    .local v9, wid:I
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 230
    .local v8, ht:I
    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int v9, v1, v2

    .line 239
    :cond_0
    if-eqz v9, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    sub-int v3, v1, v9

    .line 241
    .local v3, cap:I
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 242
    .local v0, l:Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    iput v1, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    .line 251
    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mLLYN:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, v10, v10}, Landroid/widget/Button;->measure(II)V

    .line 253
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 254
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 270
    :goto_1
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowPos:I

    packed-switch v1, :pswitch_data_0

    .line 281
    iput v10, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    .line 284
    :goto_2
    return-void

    .line 239
    .end local v0           #l:Landroid/text/Layout;
    .end local v3           #cap:I
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    const/high16 v2, 0x41c8

    iget v4, p0, Lcom/htc/android/htcime/ui/Bubble;->scale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v3, v1, v2

    goto :goto_0

    .line 266
    .restart local v0       #l:Landroid/text/Layout;
    .restart local v3       #cap:I
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 267
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->mHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    .line 272
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    goto :goto_2

    .line 275
    :pswitch_1
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    goto :goto_2

    .line 278
    :pswitch_2
    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    rsub-int/lit8 v1, v1, 0x0

    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->SHIFTX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 348
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)Lcom/htc/android/htcime/ui/Bubble;
    .locals 1
    .parameter "text"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-object p0
.end method

.method public setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;
    .locals 1
    .parameter "gravity"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    return-object p0
.end method

.method public setTextHeight(I)Lcom/htc/android/htcime/ui/Bubble;
    .locals 0
    .parameter "height"

    .prologue
    .line 371
    iput p1, p0, Lcom/htc/android/htcime/ui/Bubble;->mHeight:I

    .line 372
    return-object p0
.end method

.method public setTextSize(F)Lcom/htc/android/htcime/ui/Bubble;
    .locals 1
    .parameter "s"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    return-object p0
.end method

.method public show(I)V
    .locals 4
    .parameter "g"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 312
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public show(II)V
    .locals 7
    .parameter "offx"
    .parameter "offy"

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/Bubble;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 291
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 294
    :try_start_0
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    and-int/lit8 v2, v2, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    .line 295
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 298
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->mShiftX:I

    add-int v0, v2, v3

    .line 299
    .local v0, tx:I
    if-gez v0, :cond_5

    move v0, v1

    .line 301
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/android/htcime/ui/Bubble;->y:I

    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    :goto_1
    sub-int v2, v6, v2

    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    if-eqz v6, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    :cond_3
    sub-int v1, v2, v1

    add-int/2addr v1, p2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 307
    .end local v0           #tx:I
    :cond_4
    :goto_2
    return-void

    .line 299
    .restart local v0       #tx:I
    :cond_5
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    add-int/2addr v2, v0

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v2, v3, :cond_2

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, v2, v3

    goto :goto_0

    :cond_6
    move v2, v1

    .line 301
    goto :goto_1

    .line 303
    .end local v0           #tx:I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public showAtCenterVertical(I)V
    .locals 7
    .parameter "offy"

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/Bubble;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/Bubble;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 326
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 329
    :try_start_0
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->gravity:I

    and-int/lit8 v2, v2, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 332
    :cond_0
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 333
    .local v0, tx:I
    if-gez v0, :cond_4

    move v0, v1

    .line 335
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/Bubble;->inputView:Landroid/view/View;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/android/htcime/ui/Bubble;->y:I

    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->height:I

    :goto_1
    sub-int v2, v6, v2

    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/Bubble;->arrowDown:Z

    if-eqz v6, :cond_2

    iget v1, p0, Lcom/htc/android/htcime/ui/Bubble;->DT:I

    :cond_2
    sub-int v1, v2, v1

    add-int/2addr v1, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 341
    .end local v0           #tx:I
    :cond_3
    :goto_2
    return-void

    .line 333
    .restart local v0       #tx:I
    :cond_4
    iget v2, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I

    add-int/2addr v2, v0

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v2, v3, :cond_1

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v3, p0, Lcom/htc/android/htcime/ui/Bubble;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, v2, v3

    goto :goto_0

    :cond_5
    move v2, v1

    .line 335
    goto :goto_1

    .line 337
    .end local v0           #tx:I
    :catch_0
    move-exception v1

    goto :goto_2
.end method
