.class public Lcom/htc/htcmailwidgets/TextHeaderBar;
.super Lcom/htc/widget/HeaderBar;
.source "TextHeaderBar.java"


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

    .line 41
    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "TextHeaderBar"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->TAG:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    .line 33
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 42
    iput-object p1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->initUI()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "TextHeaderBar"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->TAG:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    .line 33
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 48
    iput-object p1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->initUI()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string v0, "TextHeaderBar"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->TAG:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    .line 33
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 55
    iput-object p1, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->initUI()V

    .line 58
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mAttrset:Landroid/util/AttributeSet;

    sget-object v4, Lcom/htc/htcmailwidgets/R$styleable;->TextHeaderBar:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    .line 80
    .end local v0           #array:Landroid/content/res/TypedArray;
    :cond_0
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/htc/htcmailwidgets/TextHeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 81
    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setHeight(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    iget-object v3, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 125
    :cond_0
    const/4 v2, -0x1

    .line 126
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 127
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

    .line 98
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    const-string v1, "tall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 102
    const v0, 0x20d0082

    invoke-direct {p0, v0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setHeight(I)V

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mStrHeaderType:Ljava/lang/String;

    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 104
    const v0, 0x20d0081

    invoke-direct {p0, v0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setHeight(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setHeight(I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setHeight(I)V

    goto :goto_0

    .line 112
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
    .line 92
    invoke-super {p0}, Lcom/htc/widget/HeaderBar;->onAttachedToWindow()V

    .line 93
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setupHeaderHeight()V

    .line 94
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/TextHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method
