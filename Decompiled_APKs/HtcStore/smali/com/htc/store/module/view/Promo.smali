.class public Lcom/htc/store/module/view/Promo;
.super Ljava/lang/Object;
.source "Promo.java"


# instance fields
.field private mPromoImage:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/view/Promo;->mView:Landroid/view/View;

    .line 18
    invoke-direct {p0}, Lcom/htc/store/module/view/Promo;->findViews()V

    .line 19
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/store/module/view/Promo;->mView:Landroid/view/View;

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/store/module/view/Promo;->mPromoImage:Landroid/widget/ImageView;

    .line 39
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/store/module/view/Promo;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setPromoImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/store/module/view/Promo;->mPromoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/htc/store/module/view/Promo;->mPromoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/Promo;->mPromoImage:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
