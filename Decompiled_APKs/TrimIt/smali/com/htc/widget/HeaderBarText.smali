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
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 22
    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    .line 23
    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    .line 33
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupEnvironment()V

    .line 34
    return-void
.end method

.method private setupEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 39
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    if-gez v1, :cond_1

    .line 43
    :cond_0
    const v1, 0x20d0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    .line 44
    const v1, 0x20d0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    .line 48
    :cond_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setGravity(I)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    .line 50
    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    iget v2, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    invoke-virtual {p0, v1, v4, v2, v4}, Lcom/htc/widget/HeaderBarText;->setPadding(IIII)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x20900eb

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    const v1, 0x2020260

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    .line 59
    const v1, 0x2020261

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method private setupSecondaryRightText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 68
    .local v0, layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 70
    .local v1, layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->removeAllViews()V

    .line 73
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 76
    .restart local v0       #layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 78
    .restart local v1       #layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x4000

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 79
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v2       #linearLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 91
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 94
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_1

    .line 102
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x203004c

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 115
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    return-void

    .line 109
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

    .prologue
    .line 214
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

    .prologue
    .line 219
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

    .prologue
    .line 224
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
    .parameter "resource"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setPrimaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setSecondaryLeftVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public setSecondaryRightText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    return-void
.end method

.method public setSecondaryRightText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public setSecondaryRightVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    return-void
.end method

.method updateResource()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030043

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030049

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 137
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_3

    .line 138
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x203004c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x20300a9

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
