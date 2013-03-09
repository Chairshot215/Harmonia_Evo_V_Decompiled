.class public Lcom/android/htccontacts/ui/EditStructuredNameActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "EditStructuredNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;,
        Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditStructuredNameActivity"


# instance fields
.field private mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

.field private mActionTextWatcher:Landroid/text/TextWatcher;

.field private mFNEditText:Landroid/widget/EditText;

.field private mFamilyEdit:Landroid/widget/EditText;

.field private mGivenEdit:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMiddleEdit:Landroid/widget/EditText;

.field mNameEditorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mNameValues:Landroid/content/ContentValues;

.field private mPhoneticFamilyEdit:Landroid/widget/EditText;

.field private mPhoneticGivenEdit:Landroid/widget/EditText;

.field private mPhoneticMiddleEdit:Landroid/widget/EditText;

.field private mPrefixEdit:Landroid/widget/EditText;

.field private mResultReceiver:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

.field private mSuffixEdit:Landroid/widget/EditText;

.field mSupportColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnstructuredName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameEditorList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSupportColumns:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    .line 605
    return-void
.end method

.method private accept()V
    .locals 4

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/NameUtility;->joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 541
    .local v0, joinResult:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v1, resultIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 543
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->finish()V

    .line 551
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->accept()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->discard()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/ui/EditStructuredNameActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method private addNameEditor(IILandroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 10
    .parameter "titleRes"
    .parameter "hintRes"
    .parameter "root"
    .parameter "targetKey"

    .prologue
    .line 389
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030061

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 390
    .local v6, view:Landroid/view/ViewGroup;
    const v7, 0x7f0700da

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 391
    .local v3, label:Landroid/widget/TextView;
    const v7, 0x7f0700db

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 392
    .local v2, edit:Landroid/widget/EditText;
    const v7, 0x7f0700d7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, bottomRound:Landroid/view/View;
    const v7, 0x7f0700e7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, commonDivider:Landroid/view/View;
    if-lez p1, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_0
    if-lez p2, :cond_1

    .line 399
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 404
    :cond_1
    const-string v4, ""

    .line 405
    .local v4, lastItemType:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 406
    .local v5, locale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 407
    sget-boolean v7, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v7, :cond_2

    .line 408
    const-string v4, "data7"

    .line 421
    :goto_0
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 422
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :goto_1
    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 430
    const/16 v7, 0x20b1

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 431
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameEditorList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    return-object v2

    .line 410
    :cond_2
    const-string v4, "data2"

    goto :goto_0

    .line 414
    :cond_3
    sget-boolean v7, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v7, :cond_4

    .line 415
    const-string v4, "data9"

    goto :goto_0

    .line 417
    :cond_4
    const-string v4, "data3"

    goto :goto_0

    .line 425
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private assignItemEditor(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/util/List;)Landroid/widget/EditText;
    .locals 6
    .parameter "targetKey"
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditField;",
            ">;)",
            "Landroid/widget/EditText;"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    const/4 v0, 0x0

    .line 246
    .local v0, edit:Landroid/widget/EditText;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 247
    .local v1, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget v4, v1, Lcom/android/htccontacts/model/AccountType$EditField;->titleRes:I

    .line 248
    .local v4, titleRes:I
    iget-object v3, v1, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 249
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2, p1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->addNameEditor(IILandroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->assignItemEditor(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 255
    .end local v1           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #titleRes:I
    :cond_1
    return-object v0
.end method

.method private assignItemEditor(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 1
    .parameter "key"
    .parameter "edit"

    .prologue
    .line 260
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mGivenEdit:Landroid/widget/EditText;

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mMiddleEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 266
    :cond_2
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFamilyEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 269
    :cond_3
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPrefixEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 272
    :cond_4
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSuffixEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 275
    :cond_5
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticGivenEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 278
    :cond_6
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticMiddleEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 281
    :cond_7
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticFamilyEdit:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private clearNameEditor()V
    .locals 2

    .prologue
    .line 438
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    .local v0, root:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->unregisterActionTextWatcher()V

    .line 443
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameEditorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 444
    return-void
.end method

.method private discard()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->setResult(I)V

    .line 555
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->finish()V

    .line 556
    return-void
.end method

.method private generateCommonNameList(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 11
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "root"

    .prologue
    .line 217
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    .line 219
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v9

    .line 220
    .local v9, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v9, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v8

    .line 222
    .local v8, source:Lcom/android/htccontacts/model/AccountType;
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v10}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v5

    .line 223
    .local v5, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v6, v5, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 224
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 225
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSupportColumns:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 227
    .local v1, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v4, v1, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 228
    .local v4, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSupportColumns:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v1           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->generateNameItemKeyList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 231
    .local v7, mColumnKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 232
    .local v3, isFirstItem:Z
    if-eqz v6, :cond_2

    .line 233
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 234
    .restart local v4       #key:Ljava/lang/String;
    invoke-direct {p0, v4, p3, v6}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->assignItemEditor(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/util/List;)Landroid/widget/EditText;

    move-result-object v0

    .line 235
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 236
    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    .line 237
    const/4 v3, 0x0

    goto :goto_1

    .line 241
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private generateNameItemKeyList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 179
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "data4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v2, "data6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const-string v2, "data3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-boolean v2, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "data9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    const-string v2, "data5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-boolean v2, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v2, :cond_1

    .line 193
    const-string v2, "data7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    :goto_0
    return-object v0

    .line 197
    :cond_2
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-boolean v2, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v2, :cond_3

    .line 199
    const-string v2, "data7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    const-string v2, "data5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v2, "data3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-boolean v2, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "data9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initNameEditText(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainItemEditor(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    .line 323
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initNameValuesByExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    const-string v1, "data1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mUnstructuredName:Ljava/lang/String;

    .line 338
    const-string v1, "data2"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 339
    const-string v1, "data3"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 340
    const-string v1, "data5"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 341
    const-string v1, "data4"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 342
    const-string v1, "data6"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 343
    const-string v1, "data9"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 344
    const-string v1, "data7"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 345
    const-string v1, "data8"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mUnstructuredName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mUnstructuredName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/NameUtility;->splitToFullName(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 349
    .local v0, values:Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameValuesByValues(Landroid/content/ContentValues;)V

    .line 350
    const-string v1, "data9"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 351
    const-string v1, "data7"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 352
    const-string v1, "data8"

    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 355
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private initNameValuesByValues(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 359
    if-eqz p1, :cond_0

    .line 360
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mUnstructuredName:Ljava/lang/String;

    .line 361
    const-string v0, "data2"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 362
    const-string v0, "data3"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 363
    const-string v0, "data5"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 364
    const-string v0, "data4"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 365
    const-string v0, "data6"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 366
    const-string v0, "data9"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 367
    const-string v0, "data7"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 368
    const-string v0, "data8"

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method private obtainItemEditor(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 2
    .parameter "key"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, edit:Landroid/widget/EditText;
    const-string v1, "data2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mGivenEdit:Landroid/widget/EditText;

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :cond_1
    const-string v1, "data5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mMiddleEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "data3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFamilyEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 297
    :cond_3
    const-string v1, "data4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPrefixEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 300
    :cond_4
    const-string v1, "data6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSuffixEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 303
    :cond_5
    const-string v1, "data7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticGivenEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 306
    :cond_6
    const-string v1, "data8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 307
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticMiddleEdit:Landroid/widget/EditText;

    goto :goto_0

    .line 309
    :cond_7
    const-string v1, "data9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mPhoneticFamilyEdit:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private obtainNameDataForExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 373
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private obtainNameDataForValues(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "values"
    .parameter "key"

    .prologue
    .line 382
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method private registerActionTextWatcher()V
    .locals 3

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameEditorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 166
    .local v0, edit:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 169
    .end local v0           #edit:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method private unregisterActionTextWatcher()V
    .locals 3

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameEditorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 173
    .local v0, edit:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 175
    .end local v0           #edit:Landroid/widget/EditText;
    :cond_0
    return-void
.end method


# virtual methods
.method actionNameData()V
    .locals 4

    .prologue
    .line 502
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSupportColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainItemEditor(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    .line 504
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {p0, v2, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->obtainNameText(Ljava/lang/String;Landroid/widget/EditText;)V

    goto :goto_0

    .line 506
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public initNameEditTextList()V
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mSupportColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameEditText(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public launchIME()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isHardwareKeypadSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 595
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method obtainNameText(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 3
    .parameter "nameKey"
    .parameter "edit"

    .prologue
    .line 511
    if-eqz p2, :cond_0

    .line 512
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 513
    .local v0, seq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 522
    .end local v0           #seq:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 518
    .restart local v0       #seq:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    const v9, 0x7f03001a

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->setTitleBar()V

    .line 98
    const v9, 0x7f070048

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 100
    .local v6, root:Landroid/view/ViewGroup;
    const v9, 0x7f070046

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    .line 102
    .local v8, scrollView:Landroid/widget/ScrollView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    new-instance v9, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;-><init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V

    iput-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    .line 107
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 109
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "account_type"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, accountType:Ljava/lang/String;
    const-string v9, "data_set"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, dataSet:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const-string v0, "com.google"

    .line 115
    const/4 v4, 0x0

    .line 118
    :cond_0
    invoke-static {v0, v4}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 120
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 121
    .local v1, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameValuesByExtras(Landroid/os/Bundle;)V

    .line 125
    iget-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v9, v9, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v10, v10, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v6}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->generateCommonNameList(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 127
    iget-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    if-eqz v9, :cond_1

    .line 128
    iget-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    :cond_1
    const v9, 0x7f070017

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 132
    .local v2, buttonlayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v7

    .line 134
    .local v7, save:Lcom/htc/widget/HtcFooterButton;
    new-instance v9, Lcom/android/htccontacts/ui/EditStructuredNameActivity$1;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$1;-><init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    .line 142
    .local v3, cancel:Lcom/htc/widget/HtcFooterButton;
    new-instance v9, Lcom/android/htccontacts/ui/EditStructuredNameActivity$2;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$2;-><init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .end local v3           #cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v7           #save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameEditTextList()V

    .line 151
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->registerActionTextWatcher()V

    .line 153
    new-instance v9, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V

    iput-object v9, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    .line 154
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->launchIME()V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 455
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->clearNameEditor()V

    .line 456
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 461
    const/4 v2, 0x0

    .line 462
    .local v2, isReCreate:Z
    if-eqz p1, :cond_0

    .line 463
    const-string v5, "account_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, dataSet:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 466
    .local v4, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 467
    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 468
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameValuesByValues(Landroid/content/ContentValues;)V

    .line 469
    const/4 v2, 0x1

    .line 472
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v2, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->clearNameEditor()V

    .line 474
    const v5, 0x7f070048

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 475
    .local v3, root:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v5, v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v6, v6, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->generateCommonNameList(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 476
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->unregisterActionTextWatcher()V

    .line 477
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->initNameEditTextList()V

    .line 478
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->registerActionTextWatcher()V

    .line 481
    .end local v3           #root:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onResume()V

    .line 450
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 486
    const-string v0, "vnd.android.cursor.item/name"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mNameValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 487
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "data_set"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mAccountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 158
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 159
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 160
    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 161
    return-void
.end method
