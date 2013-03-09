.class public Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
.super Lcom/htc/widget/HeaderBarMiddle;
.source "BrowseHeaderBar.java"


# static fields
.field public static final TYPE_ADD_BUTTON:I = 0x2

.field public static final TYPE_ADD_BUTTON_DROP_DOWN:I = 0x3

.field public static final TYPE_GENERIC:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mHeaderImage:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderType:I

.field private minnerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "headerType"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput p3, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderType:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private buildHeaderBar()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->removeAllViews()V

    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setDefaultImageButton()V

    .line 99
    iget v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderType:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->addCenterView(Landroid/view/View;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 51
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    .line 52
    new-instance v0, Lcom/htc/widget/HeaderBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 53
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private setDefaultImageButton()V
    .locals 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 119
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_add"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public buildHeaderBar(I)V
    .locals 1
    .parameter "headerType"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderType:I

    .line 58
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar()V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->enableSecondBackground(Z)V

    .line 61
    return-void
.end method

.method public getHeaderDropDown()Lcom/htc/widget/HeaderBarDropDown;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method public getHeaderImage()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderText()Lcom/htc/widget/HeaderBarText;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;->onMeasure(II)V

    .line 81
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setHeaderBarbackground()V
    .locals 4

    .prologue
    .line 64
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .local v1, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 67
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    .line 69
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    const v3, 0x20806b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 72
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 75
    .end local v0           #childIndex:I
    .end local v1           #layoutView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setHeaderImage()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public setHeaderText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderType:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 131
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 143
    iget v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderType:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    :cond_0
    return-void
.end method
