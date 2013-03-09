.class public Lcom/htc/android/mail/widget/TextMailHeaderBar1;
.super Lcom/htc/widget/HeaderBar;
.source "TextMailHeaderBar1.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttrset:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mStrHeaderText:Ljava/lang/String;

.field private mStrHeaderType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "TextMailHeaderBar1"

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->TAG:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    .line 36
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->initUI()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "TextMailHeaderBar1"

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->TAG:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    .line 36
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->initUI()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-string v0, "TextMailHeaderBar1"

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->TAG:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    .line 36
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 58
    iput-object p1, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->initUI()V

    .line 61
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03004f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->enableSecondBackground(Z)V

    .line 73
    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mAttrset:Landroid/util/AttributeSet;

    sget-object v4, Lcom/htc/android/mail/R$styleable;->TextMailHeaderBar:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    .line 85
    .end local v0           #array:Landroid/content/res/TypedArray;
    :cond_0
    const v2, 0x7f09019e

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 86
    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setHeight(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    iget-object v3, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void

    .line 130
    :cond_0
    const/4 v2, -0x1

    .line 131
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 132
    .local v0, height:I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v1       #lparams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method private setupHeaderHeight()V
    .locals 4

    .prologue
    const v3, 0x20d0080

    const/4 v2, 0x1

    .line 103
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    const-string v1, "tall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 107
    const v0, 0x20d0082

    invoke-direct {p0, v0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setHeight(I)V

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mStrHeaderType:Ljava/lang/String;

    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 109
    const v0, 0x20d0081

    invoke-direct {p0, v0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setHeight(I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setHeight(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setHeight(I)V

    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/widget/HeaderBar;->onAttachedToWindow()V

    .line 98
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setupHeaderHeight()V

    .line 99
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
