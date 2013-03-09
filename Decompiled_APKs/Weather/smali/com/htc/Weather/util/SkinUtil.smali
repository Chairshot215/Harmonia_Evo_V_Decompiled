.class public Lcom/htc/Weather/util/SkinUtil;
.super Ljava/lang/Object;
.source "SkinUtil.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getAddCityEditField(Landroid/view/View;)Landroid/widget/EditText;
    .locals 2
    .parameter "searchbox"

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, mEditText:Landroid/widget/EditText;
    check-cast p1, Lcom/htc/widget/HeaderBarInput;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 132
    .local v0, acTextView:Landroid/widget/AutoCompleteTextView;
    move-object v1, v0

    .line 133
    return-object v1
.end method

.method public getAddCityItemLayout()I
    .locals 1

    .prologue
    .line 289
    const v0, 0x7f030001

    return v0
.end method

.method public getAddCitySearchBox(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "root"

    .prologue
    const v8, 0x7f09001e

    const/4 v7, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, mSearchTitle:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    .end local v3           #mSearchTitle:Lcom/htc/widget/HeaderBarMiddle;
    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v3       #mSearchTitle:Lcom/htc/widget/HeaderBarMiddle;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 106
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, headerImageLeft:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v3, v0}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 108
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 109
    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 112
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v4

    .line 113
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 115
    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 117
    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v2, Lcom/htc/widget/HeaderBarInput;

    iget-object v5, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    .line 121
    .local v2, mSearchBox:Lcom/htc/widget/HeaderBarInput;
    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 122
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 123
    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 124
    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding()V

    .line 125
    return-object v2
.end method

.method public getHeaderCityName(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "header"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0032

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public getHeaderCityTime(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "header"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0032

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public getRearrangeDeleteView(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 2
    .parameter "convertView"

    .prologue
    .line 244
    const v1, 0x7f0c001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 245
    .local v0, deleteCkbox:Landroid/widget/CheckBox;
    return-object v0
.end method

.method public getRearrangeFooterLeft(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 2
    .parameter "root"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, mDoneButton:Landroid/widget/Button;
    const v1, 0x7f0c001d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #mDoneButton:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 147
    .restart local v0       #mDoneButton:Landroid/widget/Button;
    return-object v0
.end method

.method public getRearrangeFooterRight(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 2
    .parameter "root"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, mCancelButton:Landroid/widget/Button;
    const v1, 0x7f0c001c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #mCancelButton:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 152
    .restart local v0       #mCancelButton:Landroid/widget/Button;
    return-object v0
.end method

.method public inflateRearrangeCityListView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "mInflater"

    .prologue
    .line 232
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initHeaderView(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "root"

    .prologue
    const/4 v4, 0x1

    .line 218
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HeaderBarMiddle;

    .line 220
    .local v1, headerbar:Lcom/htc/widget/HeaderBarMiddle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 222
    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 223
    .local v0, fit_screen:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 224
    iget-object v2, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20808cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 227
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarMiddle;->enableTransparentBackground()V

    .line 228
    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 229
    return-void
.end method

.method public initNormalModeHeader(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "header"

    .prologue
    const/4 v6, 0x1

    .line 157
    const v4, 0x7f0c0051

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 158
    .local v1, full_screen:Lcom/htc/widget/HeaderBarImage;
    const v4, 0x7f0c004d

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 159
    .local v2, sync:Lcom/htc/widget/HeaderBarImage;
    const v4, 0x7f0c004c

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 161
    .local v0, add_city:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 162
    const v4, 0x7f0a0005

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 163
    iget-object v4, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080993

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 166
    const v4, 0x7f0a0001

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 167
    iget-object v4, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x208087c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 170
    const v4, 0x7f0a0097

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 171
    iget-object v4, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20808d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    const v4, 0x7f0c0052

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    .line 175
    .local v3, title_app_name:Lcom/htc/widget/HeaderBarText;
    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 176
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 178
    return-void
.end method

.method public initRearrangeCityListItem(Landroid/view/View;)V
    .locals 3
    .parameter "convertView"

    .prologue
    .line 236
    const v2, 0x7f0c001f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 237
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f0c001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemCheckBox;

    .line 238
    .local v1, deleteCkbox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const v2, 0x2080014

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public setCityString(Landroid/view/View;Landroid/text/SpannableString;)V
    .locals 2
    .parameter "view"
    .parameter "city"

    .prologue
    .line 269
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 270
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setCityString(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "city"

    .prologue
    .line 274
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 275
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setHeaderCityName(Landroid/view/ViewGroup;Ljava/lang/String;Z)V
    .locals 7
    .parameter "root"
    .parameter "name"
    .parameter "current"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 191
    const v3, 0x7f0c0032

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 192
    .local v2, title:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v2, p2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 195
    if-eqz p3, :cond_1

    .line 196
    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarText;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 197
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, mCurLocateImg:Landroid/widget/ImageView;
    const v3, 0x7f020032

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v2, v0, v5}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;I)V

    .line 211
    .end local v0           #mCurLocateImg:Landroid/widget/ImageView;
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarText;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 209
    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "time"

    .prologue
    .line 213
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightText(Ljava/lang/String;)V

    .line 214
    check-cast p1, Lcom/htc/widget/HeaderBarText;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightVisibility(I)V

    .line 215
    return-void
.end method

.method public setImageResource(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "StringID"

    .prologue
    const v5, 0x7f0a0008

    const v4, 0x7f0a0005

    .line 257
    if-ne p2, v4, :cond_0

    move-object v0, p1

    .line 258
    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_titlebar_updates_rest"

    const v3, 0x208078b

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 262
    :cond_0
    if-ne p2, v5, :cond_1

    move-object v0, p1

    .line 263
    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_titlebar_cancel_rest"

    const v3, 0x208077a

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 265
    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    .end local p1
    invoke-virtual {p1, v5}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 267
    :cond_1
    return-void
.end method

.method public setRearrangeCityName(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "convertView"
    .parameter "name"

    .prologue
    .line 248
    const v1, 0x7f0c001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 249
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setRearrangeCityState(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "convertView"
    .parameter "state"

    .prologue
    .line 252
    const v1, 0x7f0c001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 253
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setRearrangeTitle(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const v1, 0x7f0c001a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #headerText:Lcom/htc/widget/HeaderBarText;
    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 139
    .restart local v0       #headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v0, :cond_0

    .line 140
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public setSkinUtil(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .parameter "tabNow"
    .parameter "tabHourly"
    .parameter "tab5Day"

    .prologue
    const/4 v5, 0x0

    const v4, 0x208073c

    const v2, 0x2080736

    const v8, 0x208072d

    const/4 v6, -0x1

    .line 34
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const-string v3, "common_titlebar_btn_selected"

    const-string v7, "common_titlebar_btn_rest"

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const-string v3, "common_titlebar_btn_selected"

    const-string v7, "common_titlebar_btn_rest"

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const-string v3, "common_titlebar_btn_selected"

    const-string v7, "common_titlebar_btn_rest"

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setStateString(Landroid/view/View;Landroid/text/SpannableString;)V
    .locals 2
    .parameter "view"
    .parameter "state"

    .prologue
    .line 279
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 280
    .local v0, cityState:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setStateString(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "state"

    .prologue
    .line 284
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 285
    .local v0, cityState:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setTitleBackgroundSkinUtil(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v2, "common_titlebar_sublevel"

    const v3, 0x2080085

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, bgId:I
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    return-void
.end method

.method public setTitleCenterSkinUtil(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const v2, 0x2080736

    const-string v3, "common_titlebar_btn_selected"

    const v4, 0x208073c

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "common_titlebar_btn_rest"

    const v8, 0x2080737

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method public setTitleDetailRightSkinUtil(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const v2, 0x2080736

    const-string v3, "common_titlebar_btn_selected"

    const v4, 0x208073c

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "common_titlebar_btn_rest"

    const v8, 0x2080737

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setTitleLeftSkinUtil(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const v2, 0x2080736

    const-string v3, "common_titlebar_btn_selected"

    const v4, 0x208073c

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "common_titlebar_btn_rest"

    const v8, 0x2080737

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public setTitleRightSkinUtil(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/Weather/util/SkinUtil;->mContext:Landroid/content/Context;

    const-string v1, "common_titlebar_btn_press"

    const v2, 0x2080736

    const-string v3, "common_titlebar_btn_selected"

    const v4, 0x208073c

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "common_titlebar_btn_rest"

    const v8, 0x2080737

    invoke-static/range {v0 .. v8}, Lcom/htc/Weather/util/WeatherUtil;->getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method
