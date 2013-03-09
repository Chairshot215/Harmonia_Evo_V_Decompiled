.class Lcom/htc/widget/HtcListItem2TextComponent;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItem2TextComponent.java"


# static fields
.field static final MAX_NUM_TEXT:I = 0x2

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFontSize:[I

.field protected mIsMarqueeEnabled:Z

.field protected mMode:I

.field protected mRealHeightOfText:[I

.field protected mText:[Landroid/widget/TextView;

.field protected mTextTopY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 18
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 25
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 70
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    .line 71
    iput p2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 76
    return-void

    .line 73
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 92
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 31
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 32
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    if-eqz p2, :cond_0

    .line 40
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 43
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 51
    return-void

    .line 46
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 47
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    if-nez p2, :cond_1

    .line 115
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    if-nez p2, :cond_1

    .line 102
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 3
    .parameter "index"
    .parameter "defStyle"

    .prologue
    .line 85
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    aget v2, v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 273
    if-eqz p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 275
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 276
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 277
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 280
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 281
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 282
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 263
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem2TextComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final setPrimaryLinkTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 177
    return-void
.end method

.method public final setPrimaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter "colors"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final setPrimaryTextAutoLinkMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 169
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 165
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public final setSecondaryLinkTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 243
    return-void
.end method

.method public final setSecondaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter "colors"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final setSecondaryTextAutoLinkMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 235
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 231
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    return-void
.end method
