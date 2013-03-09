.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# static fields
.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "com.htc.intent.extra.erase_external_sd_card"

.field static final ERASE_INTERNAL_EXTRA:Ljava/lang/String; = "com.htc.intent.extra.erase_internal_sd_card"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorage:Landroid/widget/CheckBox;

.field private mInternalStorageContainer:Landroid/view/View;

.field private mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    .line 131
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 11

    .prologue
    const v10, 0x7f0800de

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v9, 0x8

    .line 153
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0800e4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 154
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0800e2

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 156
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0800e3

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 159
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0800e0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, internalStorageContainer:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v5, 0x7f0800e1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    .line 169
    new-instance v5, Lcom/android/settings/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 186
    .local v3, isExtStorageEmulated:Z
    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 188
    :cond_2
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, externalOption:Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0800db

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, externalAlsoErased:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v8, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v3, :cond_7

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v1           #externalOption:Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 212
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    iget-object v8, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->setExternalStorageContainer(Landroid/view/View;)V

    .line 215
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v5

    if-nez v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0c0125

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "sd_encryption"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    .line 227
    .local v4, sdEncrypt:Z
    if-eqz v4, :cond_6

    .line 228
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    :cond_4
    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    if-eqz v5, :cond_5

    .line 235
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    :cond_5
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0800df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_6
    return-void

    .end local v4           #sdEncrypt:Z
    .restart local v0       #externalAlsoErased:Landroid/view/View;
    .restart local v1       #externalOption:Landroid/view/View;
    :cond_7
    move v5, v7

    .line 198
    goto :goto_0

    .line 200
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v1           #externalOption:Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v8, Lcom/android/settings/MasterClear$3;

    invoke-direct {v8, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 244
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 24

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800dc

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 250
    .local v8, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800dd

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 251
    .local v11, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 255
    .local v12, context:Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 256
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 257
    .local v7, accounts:[Landroid/accounts/Account;
    array-length v5, v7

    .line 258
    .local v5, N:I
    if-nez v5, :cond_0

    .line 259
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 260
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v21, "layout_inflater"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 267
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 268
    .local v14, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v14

    .line 270
    .local v4, M:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    .line 271
    aget-object v6, v7, v16

    .line 272
    .local v6, account:Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 273
    .local v13, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 274
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v14, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 275
    aget-object v13, v14, v19

    .line 279
    :cond_1
    if-nez v13, :cond_3

    .line 280
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No descriptor for account name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 273
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 284
    :cond_3
    const/16 v17, 0x0

    .line 286
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 287
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 288
    .local v9, authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 294
    .end local v9           #authContext:Landroid/content/Context;
    :cond_4
    :goto_4
    const v21, 0x7f04004d

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 297
    .local v10, child:Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.htc.sync.provider.weather"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Weather"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    :cond_5
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.htc.newsreader"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "News"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    :cond_6
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.htc.android.Stock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Stocks"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 300
    :cond_7
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/MasterClear;->getLabelForType(Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_5
    if-eqz v17, :cond_8

    .line 307
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_8
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 290
    .end local v10           #child:Landroid/widget/TextView;
    :catch_0
    move-exception v15

    .line 291
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No icon for account type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 302
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #child:Landroid/widget/TextView;
    :cond_9
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 312
    .end local v6           #account:Landroid/accounts/Account;
    .end local v10           #child:Landroid/widget/TextView;
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_a
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c0a66

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0a67

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 112
    const v1, 0x7f0c0a69

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.htc.intent.extra.erase_internal_sd_card"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.htc.intent.extra.erase_external_sd_card"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z

    .line 124
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getLabelForType(Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "accountType"
    .parameter "desc"

    .prologue
    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, label:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 367
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 375
    .end local v0           #authContext:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No label for account type , type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 370
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 371
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No label for account type , type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException found for account type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getActivity() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onCreate(Landroid/content/Context;)V

    .line 321
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x2080012

    .line 327
    const v0, 0x7f04004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 329
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 332
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "common_checkbox"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "common_checkbox"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onDestroy()V

    .line 354
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 355
    return-void
.end method
