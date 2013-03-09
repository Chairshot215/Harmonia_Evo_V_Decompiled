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
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    .line 48
    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    .line 53
    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    .line 58
    iput-object p1, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public disablePulldownButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 302
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_img_1x1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, buttonResId:I
    const/4 v2, 0x0

    .line 304
    .local v2, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_0

    .line 307
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->hideDropDown()V

    .line 310
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_dropdown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, resId:I
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 315
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_left"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 319
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {v2, v5}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 323
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 324
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 327
    :cond_2
    return-void
.end method

.method public disableRightButton()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 254
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableRightButton2()V
    .locals 4

    .prologue
    .line 276
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 280
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enablePulldownButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_img_1x1"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, buttonResId:I
    const/4 v2, 0x0

    .line 336
    .local v2, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 338
    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->showDropDown()V

    .line 342
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_dropdown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 343
    .local v1, resId:I
    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 347
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v4, "title_1_left"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 351
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_2

    .line 354
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 355
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    invoke-virtual {v2, v6}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 359
    :cond_2
    return-void
.end method

.method public enableRightButton()V
    .locals 4

    .prologue
    .line 264
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableRightButton2()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 293
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public getDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method public hideDropDown()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
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

    .prologue
    const/4 v8, 0x0

    .line 77
    iget-object v4, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v5, "title_1_dropdown"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, resId:I
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DropDownList;

    iput-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8}, Lcom/htc/widget/DropDownList;->setArrowEnable(Z)V

    .line 81
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x3c0

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownHeight(I)V

    .line 82
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x2f7

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeight(I)V

    .line 83
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, 0x1a4

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setMaxDropDownListViewHeightInLandMode(I)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_pulldown_bkg"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, imgResId:I
    const/4 v0, 0x0

    .line 86
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v0}, Lcom/htc/widget/DropDownList;->setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x4800

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v8, v8}, Lcom/htc/widget/DropDownList;->setListCornerRoundedEnabled(ZZ)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_list_divider"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/Title1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v1}, Lcom/htc/widget/DropDownList;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    const/16 v5, -0xa

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    .line 98
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, p0}, Lcom/htc/widget/DropDownList;->setDropDownAnchorView(Landroid/view/View;)V

    .line 100
    iget-object v4, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    new-instance v5, Lcom/htc/widget/Title1$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Title1$1;-><init>(Lcom/htc/widget/Title1;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DropDownList;->setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V

    .line 122
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v2           #imgResId:I
    :cond_5
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setLeftBlockImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_img_1x1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, imageResId:I
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 222
    .local v0, imageButton:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 224
    .end local v0           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setLeftTitle(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_left"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, txtResId:I
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setLeftTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_left"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setNotificationText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "ball"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 409
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setRightButtonImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_1"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 232
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 234
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setRightButtonImage2(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_button_right_2"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, buttonResId:I
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 242
    .local v1, imageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 244
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public setRightTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v3, "title_1_txt_right"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setTitle1(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 62
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .restart local v0       #textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method

.method public setTitle1(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 69
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .restart local v0       #textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title1;->mDropView:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    goto :goto_0
.end method

.method public showNotificationBubble(Z)V
    .locals 12
    .parameter "b"

    .prologue
    const/16 v11, 0xc

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 366
    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "ball"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 367
    .local v4, resId:I
    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {p0, v4}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, ball:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 370
    if-eqz p1, :cond_3

    .line 371
    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "title_1_img_1x1"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 372
    .local v1, buttonResId:I
    iget-object v7, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v8, "title_1_txt_left"

    invoke-static {v7, v8}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 374
    .local v5, textResId:I
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 375
    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, buttonView:Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 377
    .local v6, textView:Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    .line 378
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v3, buttonView_params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 381
    invoke-virtual {v3, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 382
    invoke-virtual {v3, v9, v11, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 383
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .end local v2           #buttonView:Landroid/view/View;
    .end local v3           #buttonView_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #textView:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .end local v0           #ball:Landroid/view/View;
    .end local v1           #buttonResId:I
    .end local v5           #textResId:I
    :cond_1
    :goto_1
    return-void

    .line 386
    .restart local v0       #ball:Landroid/view/View;
    .restart local v1       #buttonResId:I
    .restart local v2       #buttonView:Landroid/view/View;
    .restart local v3       #buttonView_params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5       #textResId:I
    .restart local v6       #textView:Landroid/view/View;
    :cond_2
    const/16 v7, 0xb

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 387
    invoke-virtual {v3, v9, v11, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 395
    .end local v1           #buttonResId:I
    .end local v2           #buttonView:Landroid/view/View;
    .end local v3           #buttonView_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #textResId:I
    .end local v6           #textView:Landroid/view/View;
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public showProgressBar(Z)V
    .locals 14
    .parameter "b"

    .prologue
    .line 415
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_pbar"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 418
    .local v6, resId:I
    if-eqz v6, :cond_0

    .line 419
    invoke-virtual {p0, v6}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 420
    .local v4, progressBar:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 421
    if-eqz p1, :cond_3

    .line 422
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_img_1x1"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 424
    .local v2, buttonResId:I
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "ball"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, bubbleResId:I
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_txt_left"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 426
    .local v9, txtResId:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 427
    invoke-virtual {p0, v2}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 428
    .local v3, buttonView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, bubbleView:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 430
    .local v7, textView:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 431
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 433
    .local v5, progressBar_params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v8, text_params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 436
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 437
    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 439
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 440
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    const/4 v10, 0x0

    const/16 v11, 0x14

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 442
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .end local v0           #bubbleResId:I
    .end local v1           #bubbleView:Landroid/view/View;
    .end local v2           #buttonResId:I
    .end local v3           #buttonView:Landroid/view/View;
    .end local v4           #progressBar:Landroid/view/View;
    .end local v5           #progressBar_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #textView:Landroid/view/View;
    .end local v8           #text_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #txtResId:I
    :cond_0
    :goto_1
    return-void

    .line 445
    .restart local v0       #bubbleResId:I
    .restart local v1       #bubbleView:Landroid/view/View;
    .restart local v2       #buttonResId:I
    .restart local v3       #buttonView:Landroid/view/View;
    .restart local v4       #progressBar:Landroid/view/View;
    .restart local v5       #progressBar_params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #textView:Landroid/view/View;
    .restart local v8       #text_params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #txtResId:I
    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 447
    :cond_2
    const/16 v10, 0xb

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 454
    .end local v0           #bubbleResId:I
    .end local v1           #bubbleView:Landroid/view/View;
    .end local v2           #buttonResId:I
    .end local v3           #buttonView:Landroid/view/View;
    .end local v5           #progressBar_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #textView:Landroid/view/View;
    .end local v8           #text_params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #txtResId:I
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "title_1_txt_left"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 456
    .restart local v9       #txtResId:I
    iget-object v10, p0, Lcom/htc/widget/Title1;->mContext:Landroid/content/Context;

    const-string v11, "ball"

    invoke-static {v10, v11}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 457
    .restart local v0       #bubbleResId:I
    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, v0}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 459
    .restart local v1       #bubbleView:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 460
    .restart local v7       #textView:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 461
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 463
    .restart local v8       #text_params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 464
    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 465
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 466
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 468
    :cond_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
