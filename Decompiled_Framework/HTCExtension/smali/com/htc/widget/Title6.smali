.class public Lcom/htc/widget/Title6;
.super Landroid/widget/RelativeLayout;
.source "Title6.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private searchbtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public disableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_layout"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_layout"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setButtonTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title6_button_text"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_img_right"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
