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
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    .line 49
    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    .line 54
    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v0, p0, Lcom/htc/widget/Title5;->searchbtn:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    .line 59
    iput-object p1, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public disableRightButton()V
    .locals 4

    .prologue
    .line 263
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 267
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableRightButton2()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 293
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableCenterButton()V
    .locals 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 339
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 340
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    .prologue
    .line 277
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_button_layout_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 281
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableRightButton2()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_button_layout_2"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_button_layout_1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 313
    iget-object v3, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "common_title_thick_btn_center"

    const v5, 0x2080720

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 314
    .local v1, resId:I
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    const/16 v3, 0x14

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 320
    .end local v1           #resId:I
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public getDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method public hideCenterButton()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 352
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public hideDropDown()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method

.method public hideRightButton()V
    .locals 9

    .prologue
    .line 385
    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_right_button"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 386
    .local v1, buttonResId:I
    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_center_button"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 387
    .local v2, centerButtonResId:I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 389
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 390
    .local v3, centerButtonView:Landroid/view/View;
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 391
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 393
    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "title_5_dropdown"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, layoutId:I
    iget-object v6, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v7, "common_title_thick_btn_rest"

    const v8, 0x2080728

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, bgId:I
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    .end local v0           #bgId:I
    .end local v3           #centerButtonView:Landroid/view/View;
    .end local v4           #layoutId:I
    .end local v5           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public hideSecondaryTitle()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 81
    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title_5_txt_1x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, txtResId1:I
    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title5_text2x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 83
    .local v4, txtResId2:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, textView1:Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, textView2:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #textView1:Landroid/widget/TextView;
    .end local v2           #textView2:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 209
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

    .prologue
    const/4 v8, 0x0

    .line 135
    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, resId:I
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DropDownList;

    iput-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v4, :cond_5

    .line 138
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8}, Lcom/htc/widget/DropDownList;->setArrowEnable(Z)V

    .line 139
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x3c0

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownHeight(I)V

    .line 140
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x2f7

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeight(I)V

    .line 141
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x1a4

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeightInLandMode(I)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_pulldown_bkg"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, imgResId:I
    const/4 v0, 0x0

    .line 145
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v0}, Lcom/htc/widget/DropDownList;->setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x4800

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_list_divider"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v1}, Lcom/htc/widget/DropDownList;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/htc/widget/DropDownList;->setListCornerRoundedEnabled(ZZ)V

    .line 155
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, -0xa

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    .line 156
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, p0}, Lcom/htc/widget/DropDownList;->setDropDownAnchorView(Landroid/view/View;)V

    .line 158
    iget-object v4, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Lcom/htc/widget/Title5$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Title5$1;-><init>(Lcom/htc/widget/Title5;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V

    .line 182
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v2           #imgResId:I
    :cond_5
    return-void
.end method

.method public setButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 417
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_right_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 420
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 422
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setButtonTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_button_text_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setButtonTitle2(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_button_text_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_center_button"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 409
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 411
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setNotificationText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 429
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 430
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 432
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setPulldownButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 323
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_pulldown"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 326
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 328
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setRightButtonImage2(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_img_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 255
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title5_text2x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title5;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    goto :goto_0
.end method

.method public showNotificationBubble(Z)V
    .locals 4
    .parameter "b"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v3, "title_5_txt_1x2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, resId:I
    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, ball:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 446
    if-eqz p1, :cond_1

    .line 447
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 454
    .end local v0           #ball:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local v0       #ball:Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightButton()V
    .locals 7

    .prologue
    .line 366
    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_right_button"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, buttonResId:I
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 369
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 370
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "title_5_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, layoutId:I
    iget-object v4, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v5, "common_title_thick_btn_left"

    const v6, 0x2080724

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 374
    .local v0, bgId:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    .end local v0           #bgId:I
    .end local v2           #layoutId:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public showSecondaryTitle()V
    .locals 7

    .prologue
    .line 96
    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title_5_txt_1x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, txtResId1:I
    iget-object v5, p0, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v6, "title5_text2x1"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, txtResId2:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {p0, v3}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, textView1:Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, textView2:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 102
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x3

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #textView1:Landroid/widget/TextView;
    .end local v2           #textView2:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
