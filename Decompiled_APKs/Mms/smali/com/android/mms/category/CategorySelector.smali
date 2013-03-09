.class public Lcom/android/mms/category/CategorySelector;
.super Ljava/lang/Object;
.source "CategorySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;
    }
.end annotation


# static fields
.field private static final MENU_SWITCH_TO_BLOCK:I = 0x2

.field private static final MENU_SWITCH_TO_GENERAL:I = 0x0

.field private static final MENU_SWITCH_TO_SECURE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBlockedCategoryEnabled:Z

.field mCategory:Lcom/android/mms/category/Category;

.field private mCategoryButton:Landroid/view/View;

.field mCategoryButtonListener:Landroid/view/View$OnClickListener;

.field private mCategoryButtonView:Landroid/view/View;

.field mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

.field mCategoryOnItemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mClickCategoryMenuListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mConfirmPassword:Ljava/lang/String;

.field mConfirmPasswordEditor:Landroid/widget/EditText;

.field private mConfirmPasswordWatcher:Landroid/text/TextWatcher;

.field private final mContext:Landroid/content/Context;

.field mCreateCategoryMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mDlgArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field mFactory:Landroid/view/LayoutInflater;

.field mGeneralCategoryEnabled:Z

.field private mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mLoginListener:Landroid/content/DialogInterface$OnClickListener;

.field mPassword:Ljava/lang/String;

.field mPasswordEditor:Landroid/widget/EditText;

.field private mPasswordWatcher:Landroid/text/TextWatcher;

.field mPendingCategory:Lcom/android/mms/category/Category;

.field mSecureCategoryEnabled:Z

.field private mSetPasswdListener:Landroid/content/DialogInterface$OnClickListener;

.field private mdropdownlist:Lcom/htc/widget/DropDownList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/category/CategorySelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/category/Category;)V
    .locals 1
    .parameter "context"
    .parameter "initCategory"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mConfirmPassword:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/android/mms/category/CategorySelector$1;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$1;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryOnItemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 153
    new-instance v0, Lcom/android/mms/category/CategorySelector$2;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$2;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/android/mms/category/CategorySelector$3;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$3;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mClickCategoryMenuListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 176
    new-instance v0, Lcom/android/mms/category/CategorySelector$4;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$4;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCreateCategoryMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 210
    new-instance v0, Lcom/android/mms/category/CategorySelector$5;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$5;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mLoginListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    new-instance v0, Lcom/android/mms/category/CategorySelector$6;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$6;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mSetPasswdListener:Landroid/content/DialogInterface$OnClickListener;

    .line 285
    new-instance v0, Lcom/android/mms/category/CategorySelector$7;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$7;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 297
    new-instance v0, Lcom/android/mms/category/CategorySelector$8;

    invoke-direct {v0, p0}, Lcom/android/mms/category/CategorySelector$8;-><init>(Lcom/android/mms/category/CategorySelector;)V

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mConfirmPasswordWatcher:Landroid/text/TextWatcher;

    .line 86
    iput-object p2, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    .line 87
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mFactory:Landroid/view/LayoutInflater;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/DropDownList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/category/CategorySelector;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loginDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "positiveListener"

    .prologue
    const/4 v6, 0x0

    .line 310
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 311
    .local v3, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f03002b

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 313
    .local v4, loginView:Landroid/view/View;
    const v5, 0x7f0e00a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 314
    .local v2, edit:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    invoke-direct {p0}, Lcom/android/mms/category/CategorySelector;->resetPasswords()V

    .line 318
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f090291

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 320
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 321
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 322
    const v5, 0x20c015f

    invoke-virtual {v0, v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 323
    const v5, 0x20c0164

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 324
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 326
    .local v1, dlg:Landroid/app/Dialog;
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method private refreshCategoryButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 374
    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    if-eqz v0, :cond_5

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCreateCategoryMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 383
    :cond_3
    :goto_1
    return-void

    .line 368
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_1
.end method

.method private resetPasswords()V
    .locals 1

    .prologue
    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mConfirmPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    .line 356
    return-void
.end method

.method private setPasswordDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9
    .parameter "positiveListener"

    .prologue
    const/4 v8, 0x0

    .line 330
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 331
    .local v3, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f03002b

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 333
    .local v4, setPasswordView:Landroid/view/View;
    const v5, 0x7f0e00a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 334
    .local v2, edit:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 336
    const v5, 0x7f0e00a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edit:Landroid/widget/EditText;
    check-cast v2, Landroid/widget/EditText;

    .line 337
    .restart local v2       #edit:Landroid/widget/EditText;
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "edit >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 339
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mConfirmPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    invoke-direct {p0}, Lcom/android/mms/category/CategorySelector;->resetPasswords()V

    .line 343
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f090292

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 345
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 346
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 347
    const v5, 0x20c015f

    invoke-virtual {v0, v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 348
    const v5, 0x20c0164

    invoke-virtual {v0, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 351
    .local v1, dlg:Landroid/app/Dialog;
    iget-object v5, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method


# virtual methods
.method public DropDownCategoryChoice(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/category/Category;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/category/Category;>;"
    const/4 v1, 0x0

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 415
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    .line 423
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    const v2, 0x7f09029a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    const v2, 0x7f09029b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    iget-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    const v2, 0x7f090335

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_2
    return-object v0

    .line 419
    :cond_3
    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    .line 420
    sget-object v1, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    .line 421
    sget-object v1, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    goto :goto_0
.end method

.method public SetOnItemListener(Lcom/htc/widget/DropDownList;)V
    .locals 2
    .parameter "dropdownlist"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;

    .line 104
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryOnItemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public SetOnItemListener(Lcom/htc/widget/HeaderBarDropDown;)V
    .locals 2
    .parameter "dropdownlist"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 113
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryOnItemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    :cond_0
    return-void
.end method

.method buildCategoryMenuItem(Landroid/view/ContextMenu;Lcom/android/mms/category/Category;II)V
    .locals 3
    .parameter "menu"
    .parameter "category"
    .parameter "itemId"
    .parameter "title"

    .prologue
    const/4 v2, 0x1

    .line 202
    const/4 v1, 0x0

    invoke-interface {p1, p3, p3, v1, p4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 203
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mClickCategoryMenuListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 204
    invoke-interface {p1, p3, v2, v2}, Landroid/view/ContextMenu;->setGroupCheckable(IZZ)V

    .line 205
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {p2, v1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 208
    :cond_0
    return-void
.end method

.method public dismissDialog()V
    .locals 4

    .prologue
    .line 434
    iget-object v3, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 443
    :cond_0
    return-void

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 437
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/mms/category/CategorySelector;->mDlgArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 439
    .local v0, dlg:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 437
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public enableCategories(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/category/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/category/Category;>;"
    const/4 v0, 0x0

    .line 398
    if-nez p1, :cond_0

    .line 399
    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    .line 400
    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    .line 401
    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    .line 408
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/category/CategorySelector;->refreshCategoryButton()V

    .line 409
    return-void

    .line 403
    :cond_0
    sget-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    .line 404
    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    .line 405
    sget-object v0, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    goto :goto_0
.end method

.method public enableCategory(Lcom/android/mms/category/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    const/4 v1, 0x1

    .line 386
    sget-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    .line 394
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/category/CategorySelector;->refreshCategoryButton()V

    .line 395
    return-void

    .line 388
    :cond_1
    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    goto :goto_0

    .line 390
    :cond_2
    sget-object v0, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iput-boolean v1, p0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    goto :goto_0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/Category;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method login()Z
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/android/mms/category/PasswordManager;->getInstance()Lcom/android/mms/category/PasswordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/PasswordManager;->authenticate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOnCategoryChangeListener(Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    .line 364
    return-void
.end method

.method setPassword()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    const v2, 0x7f090294

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 258
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/category/CategorySelector;->mConfirmPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mContext:Landroid/content/Context;

    const v2, 0x7f090295

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/android/mms/category/PasswordManager;->getInstance()Lcom/android/mms/category/PasswordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/PasswordManager;->setPassword(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelectorButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCreateCategoryMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 95
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButton:Landroid/view/View;

    .line 97
    :cond_0
    return-void
.end method

.method public setSelectorButtonView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "button"
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/mms/category/CategorySelector;->setSelectorButton(Landroid/view/View;)V

    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCreateCategoryMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    iput-object p2, p0, Lcom/android/mms/category/CategorySelector;->mCategoryButtonView:Landroid/view/View;

    .line 150
    :cond_0
    return-void
.end method

.method public switchTo(Lcom/android/mms/category/Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {p1, v0}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-object v0, Lcom/android/mms/category/CategorySelector;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Lcom/android/mms/category/CategorySelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/category/Category;->requirePassword()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->requirePassword()Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mPendingCategory:Lcom/android/mms/category/Category;

    .line 272
    invoke-static {}, Lcom/android/mms/category/PasswordManager;->getInstance()Lcom/android/mms/category/PasswordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/category/PasswordManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mLoginListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/android/mms/category/CategorySelector;->loginDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mSetPasswdListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/android/mms/category/CategorySelector;->setPasswordDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 278
    :cond_4
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    .line 279
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    iget-object v1, p0, Lcom/android/mms/category/CategorySelector;->mCategory:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;->onCategoryChanged(Lcom/android/mms/category/Category;)V

    goto :goto_0
.end method
