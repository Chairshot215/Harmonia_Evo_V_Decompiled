.class public Lcom/htc/widget/Title6;
.super Landroid/widget/RelativeLayout;
.source "Title6.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private searchbtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    .line 42
    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    .line 47
    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title6;->searchbtn:Landroid/widget/Button;

    .line 52
    iput-object p1, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public disableRightButton()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_layout"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, buttonResId:I
    const/4 v1, 0x0

    .line 83
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_layout"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, buttonResId:I
    const/4 v1, 0x0

    .line 104
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public setButtonTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title6_button_text"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/htc/widget/Title6;->mContext:Landroid/content/Context;

    const-string v3, "title_6_button_img_right"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
