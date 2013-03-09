.class public Lcom/htc/widget/HeaderBarText;
.super Landroid/widget/LinearLayout;
.source "HeaderBarText.java"


# instance fields
.field private paddingLeft:I

.field private paddingRight:I

.field private primaryText:Landroid/widget/TextView;

.field private secondaryLText:Landroid/widget/TextView;

.field private secondaryRText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupEnvironment()V

    return-void
.end method

.method private setupEnvironment()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    if-gez v1, :cond_1

    :cond_0
    const v1, 0x20d0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    const v1, 0x20d0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    :cond_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setGravity(I)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    iget v2, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    invoke-virtual {p0, v1, v4, v2, v4}, Lcom/htc/widget/HeaderBarText;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x20900eb

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x2020260

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    const v1, 0x2020261

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    return-void
.end method

.method private setupSecondaryRightText()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->removeAllViews()V

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/high16 v3, 0x4000

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x203004c

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20300a9

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryLeftText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryRightText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSecondaryLeftVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryRightText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSecondaryRightText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondaryRightVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method updateResource()V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030043

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030049

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x203004c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x20300a9

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
