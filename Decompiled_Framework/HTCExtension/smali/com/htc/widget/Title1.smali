.class public Lcom/htc/widget/Title1;
.super Landroid/widget/RelativeLayout;
.source "Title1.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDropView:Lcom/htc/widget/DropDownList;

.field private searchbtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    return-void
.end method

.method public disablePulldownButton()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_img_1x1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->hideDropDown()V

    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_dropdown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_left"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    return-void
.end method

.method public disableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public disableRightButton2()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enablePulldownButton()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_img_1x1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->showDropDown()V

    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_dropdown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_left"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    :cond_2
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableRightButton2()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method public hideDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method

.method public isDropDownShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v5, "title_1_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DropDownList;

    iput-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8}, Lcom/htc/widget/DropDownList;->setArrowEnable(Z)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x3c0

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownHeight(I)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x2f7

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeight(I)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x1a4

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeightInLandMode(I)V

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_pulldown_bkg"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v0}, Lcom/htc/widget/DropDownList;->setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x4800

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8, v8}, Lcom/htc/widget/DropDownList;->setListCornerRoundedEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_list_divider"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v1}, Lcom/htc/widget/DropDownList;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, -0xa

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, p0}, Lcom/htc/widget/DropDownList;->setDropDownAnchorView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Lcom/htc/widget/Title1$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Title1$1;-><init>(Lcom/htc/widget/Title1;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V

    :cond_5
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setLeftBlockImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_img_1x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setLeftTitle(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_left"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setLeftTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_left"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNotificationText(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "ball"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightButtonImage2(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_right"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle1(I)V
    .locals 2

    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle1(Ljava/lang/CharSequence;)V
    .locals 2

    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    goto :goto_0
.end method

.method public showNotificationBubble(Z)V
    .locals 12

    const/16 v11, 0xc

    const/4 v10, -0x2

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "ball"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "title_1_img_1x1"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "title_1_txt_left"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9, v11, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v7, 0xb

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9, v11, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public showProgressBar(Z)V
    .locals 14

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_pbar"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_img_1x1"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "ball"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_txt_left"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v9}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/16 v10, 0xb

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_txt_left"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "ball"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v9}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
