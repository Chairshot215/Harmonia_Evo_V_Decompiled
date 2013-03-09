.class public Lcom/coremobility/app/customui/CM_RatingBarComponent;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected a:Landroid/widget/RatingBar;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_RatingBarComponent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_RatingBarComponent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_RatingBarComponent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    new-instance v1, Lcom/coremobility/app/customui/g;

    invoke-direct {v1, p0, p1}, Lcom/coremobility/app/customui/g;-><init>(Lcom/coremobility/app/customui/CM_RatingBarComponent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public setFocusable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
