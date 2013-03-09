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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mDrawMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/htc/R$styleable;->HtcFooterButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_titlebar_btn"

    const v4, 0x208072d

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFooterButton;->setBackgroundResource(I)V

    const v2, 0x2030001

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFooterButton;->mDrawMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private drawIconImage(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getHeight()I

    move-result v2

    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float v4, v6, v7

    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float v5, v6, v7

    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcPopupWindowWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooterButton;->drawIconImage(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
