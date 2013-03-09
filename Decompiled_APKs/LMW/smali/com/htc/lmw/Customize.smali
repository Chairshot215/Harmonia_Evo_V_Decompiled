.class public Lcom/htc/lmw/Customize;
.super Lcom/htc/lmw/CustomizeBase;
.source "Customize.java"


# static fields
.field public static final addUpdateMailPrefix:Z = true

.field public static final loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime; = null

.field public static final notificationsEnabled:Z = true

.field public static final useInflator:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sput-object v0, Lcom/htc/lmw/Customize;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/lmw/CustomizeBase;-><init>()V

    return-void
.end method

.method public static activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V
    .locals 12
    .parameter "activity"
    .parameter "instance"
    .parameter "layoutId"

    .prologue
    const v11, 0x7f07000d

    const v10, 0x7f070005

    const v9, 0x7f070004

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 94
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    const v6, 0x7f070001

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 97
    .local v0, headerBar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 99
    new-instance v3, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 100
    .local v3, text:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 102
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v0, v8}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 107
    .end local v3           #text:Lcom/htc/widget/HeaderBarText;
    :cond_0
    const/high16 v6, 0x7f07

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 108
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v5, v8, v7}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 111
    :cond_1
    const v6, 0x2020053

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, textView:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_2
    instance-of v6, p1, Lcom/htc/lmw/steps/CleanCache;

    if-nez v6, :cond_3

    instance-of v6, p1, Lcom/htc/lmw/steps/ApplicationStorage;

    if-nez v6, :cond_3

    instance-of v6, p1, Lcom/htc/lmw/steps/LowMemoryIntro;

    if-eqz v6, :cond_8

    .line 117
    :cond_3
    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 118
    if-eqz v5, :cond_4

    .line 119
    invoke-virtual {v5, v8, v8}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 121
    :cond_4
    const v6, 0x7f070002

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_5

    .line 123
    invoke-virtual {v5, v8, v8}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 125
    :cond_5
    const v6, 0x7f070007

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 126
    if-eqz v5, :cond_6

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    .line 128
    invoke-virtual {v5, v8}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 158
    :cond_6
    :goto_0
    instance-of v6, p1, Lcom/htc/lmw/steps/ApplicationStorage;

    if-eqz v6, :cond_d

    .line 159
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 160
    .restart local v4       #textView:Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 161
    const v6, 0x7f05001f

    invoke-static {v6}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :cond_7
    :goto_1
    return-void

    .line 132
    :cond_8
    instance-of v6, p1, Lcom/htc/lmw/steps/MoveToSdCard;

    if-nez v6, :cond_9

    instance-of v6, p1, Lcom/htc/lmw/steps/Uninstall;

    if-eqz v6, :cond_c

    .line 134
    :cond_9
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 135
    .local v2, listView:Lcom/htc/widget/HtcListView;
    if-eqz v2, :cond_a

    .line 137
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 138
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 139
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {v2, v7, v7}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 143
    :cond_a
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_b

    .line 145
    invoke-virtual {v5, v8, v8}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    :cond_b
    move-object v1, p1

    .line 148
    check-cast v1, Lcom/htc/lmw/WizardListActivity;

    .line 149
    .local v1, listActivity:Lcom/htc/lmw/WizardListActivity;
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x2020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/htc/lmw/WizardListActivity;->memoryInfo:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x2020013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/htc/lmw/WizardListActivity;->freeMemoryInfo:Landroid/widget/TextView;

    goto :goto_0

    .line 152
    .end local v1           #listActivity:Lcom/htc/lmw/WizardListActivity;
    .end local v2           #listView:Lcom/htc/widget/HtcListView;
    :cond_c
    instance-of v6, p1, Lcom/htc/lmw/steps/MailAndMessages;

    if-eqz v6, :cond_6

    .line 154
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 155
    if-eqz v5, :cond_6

    .line 156
    invoke-virtual {v5, v8, v8}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    goto :goto_0

    .line 163
    :cond_d
    instance-of v6, p1, Lcom/htc/lmw/steps/MoveToSdCard;

    if-eqz v6, :cond_7

    .line 164
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 165
    .restart local v4       #textView:Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 166
    const v6, 0x7f050027

    invoke-static {v6}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public static getAlphaSortIcon()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x2080a80

    return v0
.end method

.method public static getAvailableSpaceStringId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f050021

    return v0
.end method

.method public static getDialogIcon()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, -0x1

    return v0
.end method

.method public static getListView(Lcom/htc/lmw/AppInfo;Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;
    .locals 11
    .parameter "appInfo"
    .parameter "convertView"
    .parameter "inflater"
    .parameter "inflateRoot"
    .parameter "mbFormat"
    .parameter "kbFormat"
    .parameter "checkBoxDrawableId"
    .parameter "itemLayoutId"

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 245
    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, view:Landroid/view/View;
    const v5, 0x202001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemCheckBox;

    .line 254
    .local v1, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    :goto_0
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 255
    iget-boolean v5, p0, Lcom/htc/lmw/AppInfo;->checked:Z

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 257
    const v5, 0x2020013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 258
    .local v3, textView:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v5, p0, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 261
    :goto_1
    iget-wide v5, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 262
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 266
    :goto_2
    const v5, 0x202001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 267
    .local v2, imageView:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v5, p0, Lcom/htc/lmw/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-object v4

    .end local v1           #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v2           #imageView:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v3           #textView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p1

    .line 250
    check-cast v4, Landroid/view/ViewGroup;

    .line 251
    .restart local v4       #view:Landroid/view/View;
    const v5, 0x202001f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemCheckBox;

    .restart local v1       #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    goto :goto_0

    .line 259
    .restart local v3       #textView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getSizeSortIcon()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x2080338

    return v0
.end method

.method public static getWizardBackButton(Landroid/app/Activity;I)Landroid/widget/Button;
    .locals 2
    .parameter "activity"
    .parameter "step"

    .prologue
    .line 188
    if-lez p1, :cond_1

    const v1, 0x2020001

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 191
    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 192
    if-nez p1, :cond_2

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    :cond_0
    return-object v0

    .line 188
    .end local v0           #button:Landroid/widget/Button;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 192
    .restart local v0       #button:Landroid/widget/Button;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;
    .locals 10
    .parameter "activity"
    .parameter "step"

    .prologue
    const v9, 0x7f050004

    const v8, 0x7f050002

    const v4, 0x2020003

    const v5, 0x2020001

    const/4 v7, 0x1

    .line 200
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v3

    .line 201
    .local v3, wiz:Lcom/htc/lmw/Wizard;
    invoke-virtual {v3}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 202
    if-le p1, v7, :cond_1

    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 203
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v3}, Lcom/htc/lmw/Wizard;->getLastStep()I

    move-result v2

    .line 206
    .local v2, lastStep:I
    if-lt p1, v2, :cond_2

    .line 207
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 208
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 210
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 211
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .end local v2           #lastStep:I
    :cond_0
    :goto_1
    move-object v1, v0

    .line 231
    .end local v0           #button:Landroid/widget/Button;
    .local v1, button:Landroid/widget/Button;
    :goto_2
    return-object v1

    .end local v1           #button:Landroid/widget/Button;
    :cond_1
    move v4, v5

    .line 202
    goto :goto_0

    .line 213
    .restart local v0       #button:Landroid/widget/Button;
    .restart local v2       #lastStep:I
    :cond_2
    if-ne p1, v7, :cond_3

    .line 214
    const v4, 0x7f050003

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 217
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 222
    .end local v0           #button:Landroid/widget/Button;
    .end local v2           #lastStep:I
    :cond_4
    if-lez p1, :cond_6

    :goto_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_5

    .line 225
    sget-object v4, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_7

    .line 226
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    :cond_5
    :goto_4
    move-object v1, v0

    .line 231
    .end local v0           #button:Landroid/widget/Button;
    .restart local v1       #button:Landroid/widget/Button;
    goto :goto_2

    .end local v1           #button:Landroid/widget/Button;
    :cond_6
    move v4, v5

    .line 222
    goto :goto_3

    .line 228
    .restart local v0       #button:Landroid/widget/Button;
    :cond_7
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_4
.end method

.method public static makeListItemsMultiline(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 36
    return-void
.end method

.method public static setItemEnabled(Landroid/app/Activity;IZ)V
    .locals 4
    .parameter "activity"
    .parameter "itemId"
    .parameter "enabled"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, item:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 63
    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    const v1, 0x202001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "common_more_view"

    const v3, 0x2080065

    invoke-static {p0, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "common_more_disabled"

    const v3, 0x20804a7

    invoke-static {p0, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static setItemHint(Landroid/app/Activity;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "activity"
    .parameter "itemId"
    .parameter "hint"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 53
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 54
    .local v1, textLines:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 56
    .end local v1           #textLines:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    return-void
.end method

.method public static setItemText(Lcom/htc/lmw/steps/MailAndMessages;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "activity"
    .parameter "itemId"
    .parameter "text"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/MailAndMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 43
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 44
    .local v1, textLines:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 46
    .end local v1           #textLines:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    return-void
.end method

.method public static setupMoveToSdCardTitle(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 276
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const v0, 0x7f050026

    invoke-static {v0}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public static setupRadioItem(Lcom/htc/lmw/steps/CleanCache;IIIZI)V
    .locals 4
    .parameter "activity"
    .parameter "radioItemId"
    .parameter "text1Id"
    .parameter "text2Id"
    .parameter "checked"
    .parameter "backgroundId"

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/CleanCache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, item:Landroid/view/View;
    invoke-virtual {v0, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x7f07000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 79
    .local v2, textLines:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 80
    invoke-virtual {v2, p3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 82
    const v3, 0x20200fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 83
    .local v1, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v1, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 85
    return-void
.end method

.method public static wizardActivityOnCreate(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "step"

    .prologue
    .line 273
    return-void
.end method
