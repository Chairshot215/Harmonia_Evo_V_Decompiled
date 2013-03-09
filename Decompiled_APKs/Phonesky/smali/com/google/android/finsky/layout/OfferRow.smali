.class public Lcom/google/android/finsky/layout/OfferRow;
.super Landroid/widget/LinearLayout;
.source "OfferRow.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mSelector:Landroid/widget/RadioButton;

.field private mSubheader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OfferRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mHeader:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OfferRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSubheader:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OfferRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mPrice:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OfferRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSelector:Landroid/widget/RadioButton;

    .line 36
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    return-void
.end method

.method public setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)V
    .locals 2
    .parameter "offer"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSubheader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mPrice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/OfferRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 57
    return-void
.end method
