.class public Lcom/android/htccontacts/widget/title/SearchHeaderBar;
.super Lcom/htc/widget/HeaderBarMiddle;
.source "SearchHeaderBar.java"


# static fields
.field public static final TYPE_ADD_BUTTON:I = 0x2

.field public static final TYPE_GENERIC:I = 0x1

.field public static final TYPE_SEARCH_BUTTON:I = 0x3


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

.field private mHeaderType:I

.field private minnerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "headerType"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput p3, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderType:I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private buildAddButton()V
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 135
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_add"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 140
    :cond_0
    return-void
.end method

.method private buildHeaderBar()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->removeAllViews()V

    .line 99
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildImageIcon()V

    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildInputBox()V

    .line 102
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->addLeftView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 105
    iget v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildAddButton()V

    .line 107
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->addRightView(Landroid/view/View;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildSearchButton()V

    .line 110
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildImageIcon()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 121
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 123
    return-void
.end method

.method private buildInputBox()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding()V

    .line 117
    return-void
.end method

.method private buildSearchButton()V
    .locals 5

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_search"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 131
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    .line 52
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    .line 53
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

    .line 54
    new-instance v0, Lcom/htc/widget/HeaderBarInput;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    .line 55
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public buildHeaderBar(I)V
    .locals 1
    .parameter "headerType"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderType:I

    .line 60
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar()V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->enableSecondBackground(Z)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->enableLeftDivider(Z)V

    .line 64
    return-void
.end method

.method public getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderIcon()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method public getHeaderSearchButton()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageSearch:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;->onMeasure(II)V

    .line 83
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setHeaderBarbackground()V
    .locals 4

    .prologue
    .line 67
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    .local v1, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 70
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 71
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    const v3, 0x20806b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 75
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 78
    .end local v0           #childIndex:I
    .end local v1           #layoutView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setHeaderIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 160
    return-void
.end method

.method public setHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    return-void
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->mHeaderImageIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method
