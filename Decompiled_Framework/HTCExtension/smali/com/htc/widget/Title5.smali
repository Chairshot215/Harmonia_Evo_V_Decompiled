.class public Lcom/htc/widget/Title5;
.super Landroid/widget/RelativeLayout;
.source "Title5.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDropView:Lcom/htc/widget/DropDownList;

.field private searchbtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

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

.method public disableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public disableRightButton2()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableCenterButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableRightButton2()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_button_layout_2"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_button_layout_1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "common_title_thick_btn_center"

    const v5, 0x2080720

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v3, 0x14

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public getDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method public hideCenterButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method

.method public hideRightButton()V
    .locals 9

    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_right_button"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_center_button"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_dropdown"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "common_title_thick_btn_rest"

    const v8, 0x2080728

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public hideSecondaryTitle()V
    .locals 8

    const/16 v7, 0x8

    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title_5_txt_1x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title5_text2x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public isDropDownShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DropDownList;

    iput-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8}, Lcom/htc/widget/DropDownList;->setArrowEnable(Z)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x3c0

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownHeight(I)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x2f7

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeight(I)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x1a4

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeightInLandMode(I)V

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_pulldown_bkg"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v0}, Lcom/htc/widget/DropDownList;->setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x4800

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_list_divider"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v1}, Lcom/htc/widget/DropDownList;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/htc/widget/DropDownList;->setListCornerRoundedEnabled(ZZ)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, -0xa

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, p0}, Lcom/htc/widget/DropDownList;->setDropDownAnchorView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Lcom/htc/widget/Title5$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Title5$1;-><init>(Lcom/htc/widget/Title5;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V

    :cond_5
    return-void
.end method

.method public setButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_right_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setButtonTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_button_text_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setButtonTitle2(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_button_text_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCenterButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNotificationText(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPulldownButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_pulldown"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightButtonImage2(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_text2x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    goto :goto_0
.end method

.method public showNotificationBubble(Z)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightButton()V
    .locals 7

    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_right_button"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "common_title_thick_btn_left"

    const v6, 0x2080724

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public showSecondaryTitle()V
    .locals 7

    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title_5_txt_1x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title5_text2x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x3

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
