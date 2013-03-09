.class public Lcom/htc/launcher/DragView;
.super Landroid/widget/FrameLayout;
.source "DragView.java"


# instance fields
.field m_anim:Landroid/animation/ValueAnimator;

.field private m_bHasDrawn:Z

.field private m_dragLayer:Lcom/htc/launcher/DragLayer;

.field private m_dragRegion:Landroid/graphics/Rect;

.field private m_dragVisualizeOffset:Landroid/graphics/Point;

.field private m_fOffsetX:F

.field private m_fOffsetY:F

.field private m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;

.field private m_nRegistrationX:I

.field private m_nRegistrationY:I

.field private m_paint:Landroid/graphics/Paint;

.field private m_textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/ApplicationInfo;IIIIII)V
    .locals 14
    .parameter "launcher"
    .parameter "appInfo"
    .parameter "nRegistrationX"
    .parameter "nRegistrationY"
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_dragVisualizeOffset:Landroid/graphics/Point;

    .line 44
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    .line 45
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;

    .line 46
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/launcher/DragView;->m_bHasDrawn:Z

    .line 49
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/launcher/DragView;->m_fOffsetX:F

    .line 50
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    .line 68
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/launcher/DragView;->setWillNotDraw(Z)V

    .line 69
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/DragLayer;

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;

    .line 71
    invoke-virtual {p0}, Lcom/htc/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 72
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f0c0010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 74
    .local v4, nDragScale:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v8, scale:Landroid/graphics/Matrix;
    add-int v9, p7, v4

    div-int v9, v9, p7

    int-to-float v1, v9

    .line 76
    .local v1, fScaleFactor:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v1, v9

    if-eqz v9, :cond_0

    .line 77
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 80
    :cond_0
    const v9, 0x7f0a001b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 81
    .local v5, nOffsetX:I
    const v9, 0x7f0a001c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 84
    .local v6, nOffsetY:I
    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_anim:Landroid/animation/ValueAnimator;

    .line 85
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_anim:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x6e

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_anim:Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x4020

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_anim:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/htc/launcher/DragView$1;

    invoke-direct {v10, p0, v5, v6}, Lcom/htc/launcher/DragView$1;-><init>(Lcom/htc/launcher/DragView;II)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v2, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    .line 111
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0}, Lcom/htc/launcher/DragView;->refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V

    .line 115
    iget-object v9, p0, Lcom/htc/launcher/DragView;->m_textView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/htc/launcher/DragView;->addView(Landroid/view/View;)V

    .line 118
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/launcher/DragView;->m_nRegistrationX:I

    .line 119
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/launcher/DragView;->m_nRegistrationY:I

    .line 122
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 123
    .local v3, ms:I
    invoke-virtual {p0, v3, v3}, Lcom/htc/launcher/DragView;->measure(II)V

    .line 124
    return-void

    .line 84
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/launcher/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetX:F

    return v0
.end method

.method static synthetic access$016(Lcom/htc/launcher/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetX:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    return v0
.end method

.method static synthetic access$116(Lcom/htc/launcher/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/DragView;)Lcom/htc/launcher/DragLayer$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/DragView;)Lcom/htc/launcher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;

    return-object v0
.end method

.method private refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 6
    .parameter "convertView"
    .parameter "info"

    .prologue
    const/4 v5, 0x2

    .line 241
    iget-object v4, p0, Lcom/htc/launcher/DragView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 242
    .local v1, currLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, lang:Ljava/lang/String;
    const-string v0, "zh,ko,ja"

    .line 244
    .local v0, UNSUPPORT_LANG:Ljava/lang/String;
    const-string v4, "zh,ko,ja"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 245
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 246
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 264
    :goto_0
    return-void

    .line 250
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 251
    .local v3, title:Ljava/lang/String;
    iget-object v4, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 252
    iget-object v3, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .end local v3           #title:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 257
    .restart local v3       #title:Ljava/lang/String;
    :goto_1
    const-string v4, ".*\\W.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 258
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 259
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 254
    .restart local p1
    :cond_1
    iget-object v4, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 261
    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 262
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_dragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    return v0
.end method

.method getPosition([I)[I
    .locals 3
    .parameter "nResult"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 233
    .local v0, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    if-nez p1, :cond_0

    const/4 v1, 0x2

    new-array p1, v1, [I

    .line 234
    :cond_0
    const/4 v1, 0x0

    iget v2, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    aput v2, p1, v1

    .line 235
    const/4 v1, 0x1

    iget v2, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    aput v2, p1, v1

    .line 236
    return-object p1
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/DragView;->m_bHasDrawn:Z

    return v0
.end method

.method move(II)V
    .locals 3
    .parameter "nTouchX"
    .parameter "nTouchY"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 218
    .local v0, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    iget v1, p0, Lcom/htc/launcher/DragView;->m_nRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/launcher/DragView;->m_fOffsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    .line 219
    iget v1, p0, Lcom/htc/launcher/DragView;->m_nRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/htc/launcher/DragView;->m_fOffsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    .line 220
    iget-object v1, p0, Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->requestLayout()V

    .line 221
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/DragView;->m_bHasDrawn:Z

    .line 168
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/htc/launcher/DragView$2;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DragView$2;-><init>(Lcom/htc/launcher/DragView;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragView;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "fAlpha"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DragView;->m_paint:Landroid/graphics/Paint;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DragView;->m_paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    invoke-virtual {p0}, Lcom/htc/launcher/DragView;->invalidate()V

    .line 187
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/launcher/DragView;->m_dragRegion:Landroid/graphics/Rect;

    .line 158
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/launcher/DragView;->m_dragVisualizeOffset:Landroid/graphics/Point;

    .line 149
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/launcher/DragView;->m_paint:Landroid/graphics/Paint;

    .line 172
    invoke-virtual {p0}, Lcom/htc/launcher/DragView;->invalidate()V

    .line 173
    return-void
.end method

.method public show(II)V
    .locals 5
    .parameter "nTouchX"
    .parameter "nTouchY"

    .prologue
    .line 197
    iget-object v3, p0, Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v3, p0}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/htc/launcher/DragView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 200
    .local v2, nWidth:I
    iget-object v3, p0, Lcom/htc/launcher/DragView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    .local v1, nHeight:I
    new-instance v0, Lcom/htc/launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/htc/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 202
    .local v0, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    iget v3, p0, Lcom/htc/launcher/DragView;->m_nRegistrationX:I

    sub-int v3, p1, v3

    iput v3, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    .line 203
    iget v3, p0, Lcom/htc/launcher/DragView;->m_nRegistrationY:I

    sub-int v3, p2, v3

    iput v3, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    .line 204
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 205
    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iput-object v0, p0, Lcom/htc/launcher/DragView;->m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 207
    iget-object v3, p0, Lcom/htc/launcher/DragView;->m_anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method
