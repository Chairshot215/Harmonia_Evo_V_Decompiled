.class public Lcom/htc/widget/HtcFooterButton;
.super Landroid/widget/Button;
.source "HtcFooterButton.java"


# instance fields
.field mDrawMatrix:Landroid/graphics/Matrix;

.field mImage:Landroid/graphics/drawable/Drawable;

.field private mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 47
    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 76
    sget-object v2, Lcom/htc/R$styleable;->HtcFooterButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_titlebar_btn"

    const v4, 0x208072d

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFooterButton;->setBackgroundResource(I)V

    .line 96
    const v2, 0x2030001

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 97
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 103
    return-void
.end method

.method private drawIconImage(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 154
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getWidth()I

    move-result v3

    .line 160
    .local v3, vWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getHeight()I

    move-result v2

    .line 161
    .local v2, vHeight:I
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 162
    .local v1, dWidth:I
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 163
    .local v0, dHeight:I
    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float v4, v6, v7

    .line 164
    .local v4, xOffset:F
    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float v5, v6, v7

    .line 165
    .local v5, yOffset:F
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/htc/widget/HtcPopupWindowWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 183
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 184
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    :cond_0
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooterButton;->drawIconImage(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "mImage"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resource"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, rsrc:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method
