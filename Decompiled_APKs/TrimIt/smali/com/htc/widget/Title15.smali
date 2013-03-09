.class public Lcom/htc/widget/Title15;
.super Landroid/widget/RelativeLayout;
.source "Title15.java"


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

    iput-object v0, p0, Lcom/htc/widget/Title15;->searchbtn:Landroid/widget/Button;

    .line 42
    iput-object p1, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/htc/widget/Title15;->searchbtn:Landroid/widget/Button;

    .line 47
    iput-object p1, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/htc/widget/Title15;->searchbtn:Landroid/widget/Button;

    .line 52
    iput-object p1, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public disableRightButton()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 93
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableRightButton2()V
    .locals 4

    .prologue
    .line 115
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 119
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableRightButton2()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_img_1x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, imageResId:I
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 71
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 73
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setRightButtonImage2(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "title_15_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 81
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 83
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method
