.class public Lcom/htc/launcher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/htc/launcher/FxShortcutInfo$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/BubbleTextView$IconUpdateRunnable;
    }
.end annotation


# static fields
.field private static final CORNER_RADIUS:F = 10.0f

.field private static final PADDING_H:F = 5.0f

.field private static final PADDING_V:F = 1.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mCornerRadius:F

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mTextBubble:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 62
    invoke-direct {p0}, Lcom/htc/launcher/BubbleTextView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 67
    invoke-direct {p0}, Lcom/htc/launcher/BubbleTextView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 72
    invoke-direct {p0}, Lcom/htc/launcher/BubbleTextView;->init()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 76
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .local v0, scale:F
    invoke-virtual {p0, v7}, Lcom/htc/launcher/BubbleTextView;->setGravity(I)V

    .line 78
    invoke-virtual {p0, v7}, Lcom/htc/launcher/BubbleTextView;->setFocusable(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v3, "rosie_shortcut_selector"

    const v4, 0x7f0200a1

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/launcher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v4, "rosie_bubble_dark_background"

    const v5, 0x7f080001

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v3, "common_label"

    const v4, 0x2080047

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mTextBubble:Landroid/graphics/drawable/Drawable;

    .line 100
    const/high16 v1, 0x4120

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/htc/launcher/BubbleTextView;->mCornerRadius:F

    .line 101
    const/high16 v1, 0x40a0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingH:F

    .line 103
    mul-float v1, v6, v0

    iput v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    .line 104
    iget v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    .line 105
    iput v6, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v2, "rosie_bubbletextview_shadowRadius"

    invoke-static {v1, v2, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v3, "rosie_bubbletextview_shadowRadius"

    invoke-static {v2, v3, v7}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v4, "rosie_bubbletextview_shadowDx"

    invoke-static {v3, v4, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v5, "rosie_bubbletextview_shadowDy"

    invoke-static {v4, v5, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/launcher/BubbleTextView;->setShadowLayer(FFFI)V

    .line 117
    :cond_1
    return-void

    .line 106
    :cond_2
    iget v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    goto :goto_0
.end method


# virtual methods
.method public OnDeskTopOrientationChanged(I)V
    .locals 8
    .parameter "Ori"

    .prologue
    const/4 v7, -0x1

    .line 197
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 199
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 200
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/htc/launcher/LegacyLayout;

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 202
    .local v0, BTParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const v3, 0x7f0a00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 203
    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 204
    const v3, 0x7f0a00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 205
    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 207
    .end local v0           #BTParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/BubbleTextView;->mContext:Landroid/content/Context;

    const-string v5, "rosie_shortcut_selector"

    const v6, 0x7f0200a1

    invoke-static {v4, v5, v6}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/launcher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const v3, 0x7f0a0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 214
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingTop:I

    .line 217
    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingLeft:I

    .line 218
    const v3, 0x7f0a00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingRight:I

    .line 219
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/launcher/BubbleTextView;->setGravity(I)V

    .line 221
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 145
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 146
    iget v5, p0, Lcom/htc/launcher/BubbleTextView;->mScrollX:I

    .line 147
    .local v5, scrollX:I
    iget v6, p0, Lcom/htc/launcher/BubbleTextView;->mScrollY:I

    .line 149
    .local v6, scrollY:I
    iget-boolean v8, p0, Lcom/htc/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v8, :cond_0

    .line 150
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/launcher/BubbleTextView;->mRight:I

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mBottom:I

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 154
    :cond_0
    or-int v8, v5, v6

    if-nez v8, :cond_3

    .line 155
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    .end local v5           #scrollX:I
    .end local v6           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 165
    .local v2, layout:Landroid/text/Layout;
    iget-object v4, p0, Lcom/htc/launcher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 167
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 168
    .local v3, left:I
    if-nez v2, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getCompoundPaddingTop()I

    move-result v7

    .line 170
    .local v7, top:I
    add-int/lit8 v8, v3, 0x0

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v8, v9

    int-to-float v9, v7

    iget v10, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v9, v10

    int-to-float v10, v3

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingH:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mScrollX:I

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    int-to-float v11, v7

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    add-float/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    :goto_1
    iget-object v8, p0, Lcom/htc/launcher/BubbleTextView;->mTextBubble:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 186
    iget-object v8, p0, Lcom/htc/launcher/BubbleTextView;->mTextBubble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 194
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #left:I
    .end local v4           #rect:Landroid/graphics/RectF;
    .end local v7           #top:I
    :goto_2
    return-void

    .line 157
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    .restart local v5       #scrollX:I
    .restart local v6       #scrollY:I
    :cond_3
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    neg-int v8, v5

    int-to-float v8, v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v5           #scrollX:I
    .end local v6           #scrollY:I
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "Rosie"

    const-string v9, "BubbleTextView mLayout null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 175
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #left:I
    .restart local v4       #rect:Landroid/graphics/RectF;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v7

    .line 176
    .restart local v7       #top:I
    int-to-float v8, v3

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v9, v10

    int-to-float v10, v3

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingH:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/htc/launcher/BubbleTextView;->mScrollX:I

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    add-int/2addr v11, v7

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/launcher/BubbleTextView;->mPaddingV:F

    add-float/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/htc/launcher/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 139
    return-void
.end method

.method public onIconUpdate(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v0

    new-instance v1, Lcom/htc/launcher/BubbleTextView$IconUpdateRunnable;

    invoke-direct {v1, p0, p3, p2}, Lcom/htc/launcher/BubbleTextView$IconUpdateRunnable;-><init>(Lcom/htc/launcher/BubbleTextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/launcher/PendingUIUpdate;->postPending(ILjava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/launcher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/launcher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/htc/launcher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/htc/launcher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 124
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 228
    instance-of v0, p1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/htc/launcher/ApplicationInfo;->setObserver(Lcom/htc/launcher/FxShortcutInfo$Observer;)V

    .line 231
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
