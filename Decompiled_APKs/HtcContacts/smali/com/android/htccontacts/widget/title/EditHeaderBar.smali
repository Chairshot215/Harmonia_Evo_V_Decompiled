.class public Lcom/android/htccontacts/widget/title/EditHeaderBar;
.super Lcom/htc/widget/HeaderBarMiddle;
.source "EditHeaderBar.java"


# static fields
.field public static final TYPE_GENERIC:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

.field private mHeaderType:I

.field private minnerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "headerType"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput p3, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderType:I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private buildCameraIcon()V
    .locals 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_attached_camera"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, drawableId:I
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 113
    return-void
.end method

.method private buildHeaderBar()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->removeAllViews()V

    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->buildCameraIcon()V

    .line 95
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->buildInputBox()V

    .line 96
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->buildMoreIcon()V

    .line 98
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->addLeftView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->addRightView(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method private buildInputBox()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 105
    return-void
.end method

.method private buildMoreIcon()V
    .locals 5

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_edit_on"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, drawableId:I
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 120
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a0238

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 121
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    .line 49
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    .line 50
    new-instance v0, Lcom/htc/widget/HeaderBarInput;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    .line 51
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public buildHeaderBar(I)V
    .locals 1
    .parameter "headerType"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderType:I

    .line 56
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->buildHeaderBar()V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->enableSecondBackground(Z)V

    .line 59
    return-void
.end method

.method public getHeaderCameraIcon()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderCameraIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 137
    return-void
.end method

.method public getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderInputBox:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method public getHeaderMoreIcon()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderImageMore:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;->onMeasure(II)V

    .line 79
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setHeaderBarbackground()V
    .locals 4

    .prologue
    .line 62
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/EditHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 65
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 66
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    const v3, 0x20806b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 70
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    .end local v0           #childIndex:I
    .end local v1           #layoutView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->mHeaderCameraIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/EditHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method
