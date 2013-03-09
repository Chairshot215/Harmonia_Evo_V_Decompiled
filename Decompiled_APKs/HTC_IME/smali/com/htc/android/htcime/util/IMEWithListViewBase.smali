.class public Lcom/htc/android/htcime/util/IMEWithListViewBase;
.super Landroid/app/Activity;
.source "IMEWithListViewBase.java"


# static fields
.field public static final MENUITEM_ADD_WORD:I = 0x2

.field public static final MENUITEM_DEL:I = 0x1


# instance fields
.field protected final HTC_IME_PACKAGENAME:Ljava/lang/String;

.field protected final HTC_RESOURCE_PACKAGENAME:Ljava/lang/String;

.field protected bNeedMenuItem:Z

.field private mCmdBar:Landroid/view/View;

.field private mHeaderBarMain:Landroid/view/View;

.field private mHeaderBarMultiDelete:Landroid/view/View;

.field protected mIMERes:Landroid/content/res/Resources;

.field protected mRes:Landroid/content/res/Resources;

.field protected mbNeedAddRightBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mbNeedAddRightBtn:Z

    .line 42
    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->HTC_RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 43
    const-string v0, "com.htc.android.htcime"

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->HTC_IME_PACKAGENAME:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMain:Landroid/view/View;

    .line 51
    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMultiDelete:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mCmdBar:Landroid/view/View;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->bNeedMenuItem:Z

    return-void
.end method

.method private getCmdBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mCmdBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 204
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mCmdBar:Landroid/view/View;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mCmdBar:Landroid/view/View;

    return-object v0
.end method

.method private getHeaderBarMain()Landroid/view/View;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMain:Landroid/view/View;

    if-nez v0, :cond_0

    .line 189
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMain:Landroid/view/View;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMain:Landroid/view/View;

    return-object v0
.end method

.method private getHeaderBarMultiDel()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMultiDelete:Landroid/view/View;

    if-nez v0, :cond_0

    .line 197
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMultiDelete:Landroid/view/View;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mHeaderBarMultiDelete:Landroid/view/View;

    return-object v0
.end method

.method private getLeftCmdBarBtn()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getCmdBar()Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, cmdBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 212
    const v1, 0x7f0e0025

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRightCmdBarBtn()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getCmdBar()Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, cmdBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 221
    const v1, 0x7f0e0024

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 224
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected HeaderBarRightBtnAction()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method protected LeftCmdBarBtnAction()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected RightCmdBarBtnAction()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method protected hideHeaderBarDropdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMain()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 120
    const v3, 0x2020050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, dropDownImage:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 122
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_0
    const v3, 0x2020228

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/DropDownList;

    .line 126
    .local v2, dropDownView:Lcom/htc/widget/DropDownList;
    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 129
    invoke-virtual {v2, v4}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 130
    invoke-virtual {v2, v4}, Lcom/htc/widget/DropDownList;->setFocusable(Z)V

    .line 134
    .end local v1           #dropDownImage:Landroid/view/View;
    .end local v2           #dropDownView:Lcom/htc/widget/DropDownList;
    :cond_1
    return-void
.end method

.method protected initEditWindowMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 241
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mRes:Landroid/content/res/Resources;

    .line 61
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.android.htcime"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->mIMERes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->requestWindowFeature(I)Z

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 231
    iget-boolean v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewBase;->bNeedMenuItem:Z

    if-ne v1, v2, :cond_0

    .line 233
    const v1, 0x20c01fc

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return v2
.end method

.method protected setActionBar(I)Z
    .locals 1
    .parameter "titleId"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected setCmdBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getCmdBar()Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, cmdBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method protected setHeaderBarMultiDelText(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMultiDel()Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 91
    const v2, 0x7f0e0068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 92
    .local v1, titleText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 95
    .end local v1           #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method protected setHeaderBarMultiDelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMultiDel()Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    return-void
.end method

.method protected setHeaderBarRightButton(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "resId"
    .parameter "l"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMain()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 107
    const v2, 0x7f0e0069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 108
    .local v1, RightBtn:Lcom/htc/widget/HeaderBarImage;
    if-eqz v1, :cond_0

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 110
    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 111
    const v2, 0x20806e4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 112
    invoke-virtual {v1, p2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .end local v1           #RightBtn:Lcom/htc/widget/HeaderBarImage;
    :cond_0
    return-void
.end method

.method protected setHeaderBarText(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMain()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    const v2, 0x7f0e0068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 76
    .local v1, titleText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 79
    .end local v1           #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method protected setHeaderBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getHeaderBarMain()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, HeaderBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected setLeftCmdBarBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "l"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getLeftCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 138
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected setLeftCmdBarBtnEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getLeftCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 153
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method protected setLeftCmdBarBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getLeftCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 146
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected setRightCmdBarBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "l"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getRightCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 160
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 162
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected setRightCmdBarBtn(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getRightCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 168
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected setRightCmdBarBtnEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->getRightCmdBarBtn()Landroid/widget/Button;

    move-result-object v0

    .line 175
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :cond_0
    return-void
.end method
