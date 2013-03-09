.class public Lcom/android/htccontacts/ui/EditExchangeNameActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;,
        Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;,
        Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;
    }
.end annotation


# instance fields
.field final DIAPLY_NAME_SELECTION:I

.field DISPLAY_TYPE_FN_FIRST:I

.field DISPLAY_TYPE_LN_FIRST:I

.field bAccept:Z

.field private mActionTextWatcher:Landroid/text/TextWatcher;

.field private mFNEditText:Landroid/widget/EditText;

.field private mFirstName:Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLNEditText:Landroid/widget/EditText;

.field private mLastName:Ljava/lang/String;

.field private mResultReceiver:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

.field mType:I

.field private mYFNEditText:Landroid/widget/EditText;

.field private mYLNEditText:Landroid/widget/EditText;

.field private mYomiganaFirstName:Ljava/lang/String;

.field private mYomiganaLastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 46
    const/16 v0, 0x1110

    iput v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DIAPLY_NAME_SELECTION:I

    .line 47
    iput v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_FN_FIRST:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_LN_FIRST:I

    .line 49
    iput v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    .line 51
    new-instance v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    .line 614
    return-void
.end method

.method private accept()V
    .locals 3

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->checkDroppable()Z

    .line 342
    iget-boolean v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->bAccept:Z

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 346
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 361
    :cond_2
    const-string v1, "data2"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    sget-boolean v1, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    .line 373
    const-string v1, "data7"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "data9"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->accept()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->discard()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/EditExchangeNameActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->selectDiaplayType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->actionNameData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/ui/EditExchangeNameActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method private actionNameData()V
    .locals 5

    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 509
    .local v1, fn:Landroid/text/Editable;
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 510
    .local v2, ln:Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 511
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 513
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 521
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 522
    const-string v3, ""

    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 523
    const-string v3, ""

    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 570
    :cond_2
    :goto_2
    return-void

    .line 510
    :cond_3
    const-string v3, ""

    goto :goto_0

    .line 511
    :cond_4
    const-string v3, ""

    goto :goto_1

    .line 526
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 527
    const-string v3, ""

    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    goto :goto_2

    .line 530
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 531
    const-string v3, ""

    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    goto :goto_2

    .line 536
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 538
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    iget v4, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_FN_FIRST:I

    if-eq v3, v4, :cond_2

    .line 549
    iget v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    iget v4, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_LN_FIRST:I

    if-ne v3, v4, :cond_2

    goto :goto_2
.end method

.method private checkDroppable()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 573
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 574
    .local v0, fn:Landroid/text/Editable;
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 577
    .local v1, ln:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 578
    :cond_0
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->bAccept:Z

    .line 588
    :goto_0
    return v2

    .line 581
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 582
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->bAccept:Z

    goto :goto_0

    .line 586
    :cond_2
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->bAccept:Z

    move v2, v3

    .line 588
    goto :goto_0
.end method

.method private createSelectionDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 401
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, fn:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, ln:Ljava/lang/String;
    const/4 v3, 0x0

    .line 405
    .local v3, items:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 407
    .local v6, locale:Ljava/util/Locale;
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 408
    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #items:[Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->generateFNGN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    invoke-direct {p0, v1, v5}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->generateGNFN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 420
    .restart local v3       #items:[Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;)V

    .line 422
    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0266

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 427
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 428
    .local v2, had:Lcom/htc/widget/HtcAlertDialog;
    new-instance v7, Lcom/android/htccontacts/ui/EditExchangeNameActivity$3;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$3;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 438
    return-object v2

    .line 414
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #had:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #items:[Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->generateGNFN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    invoke-direct {p0, v1, v5}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->generateFNGN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .restart local v3       #items:[Ljava/lang/String;
    goto :goto_0
.end method

.method private discard()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->setResult(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->finish()V

    .line 385
    return-void
.end method

.method private generateFNGN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/htccontacts/util/ContactsUtils;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateGNFN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 442
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/htccontacts/util/ContactsUtils;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectDiaplayType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 462
    .local v1, fn:Landroid/text/Editable;
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 463
    .local v2, ln:Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 464
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 467
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 475
    :cond_1
    iget v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_FN_FIRST:I

    if-ne p1, v3, :cond_5

    .line 503
    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    .line 504
    return-void

    .line 463
    :cond_3
    const-string v3, ""

    goto :goto_0

    .line 464
    :cond_4
    const-string v3, ""

    goto :goto_1

    .line 484
    :cond_5
    iget v3, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_LN_FIRST:I

    if-ne p1, v3, :cond_2

    goto :goto_2
.end method


# virtual methods
.method public launchIME()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isHardwareKeypadSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 256
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 338
    .local v0, id:I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/Window;->requestFeature(I)Z

    .line 76
    const v12, 0x7f030028

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->setContentView(I)V

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 80
    .local v6, locale:Ljava/util/Locale;
    const v3, 0x7f07005a

    .line 81
    .local v3, firstline:I
    const v8, 0x7f07005e

    .line 85
    .local v8, secondline:I
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 87
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_FN_FIRST:I

    .line 88
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_LN_FIRST:I

    .line 89
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    .line 91
    const v12, 0x7f070059

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, firstlineLabel:Landroid/widget/TextView;
    const v12, 0x7f07005d

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 93
    .local v9, secondlineLabel:Landroid/widget/TextView;
    const v12, 0x7f0a011a

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v12, 0x7f0a0119

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 103
    .end local v4           #firstlineLabel:Landroid/widget/TextView;
    .end local v9           #secondlineLabel:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->setTitleBar()V

    .line 107
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    const/16 v13, 0x20b1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    const/16 v13, 0x20b1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mActionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 119
    .local v5, intent:Landroid/content/Intent;
    const v12, 0x7f070017

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 120
    .local v1, buttonlayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v7

    .line 122
    .local v7, save:Lcom/htc/widget/HtcFooterButton;
    new-instance v12, Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;

    invoke-direct {v12, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    invoke-virtual {v7, v12}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    .line 130
    .local v2, cancel:Lcom/htc/widget/HtcFooterButton;
    new-instance v12, Lcom/android/htccontacts/ui/EditExchangeNameActivity$2;

    invoke-direct {v12, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$2;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .end local v2           #cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v7           #save:Lcom/htc/widget/HtcFooterButton;
    :cond_0
    const v12, 0x7f07005b

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 144
    .local v10, yomigana_firstname_label:Landroid/widget/TextView;
    const v12, 0x7f07005f

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 145
    .local v11, yomigana_lastname_label:Landroid/widget/TextView;
    const v12, 0x7f07005c

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    .line 146
    const v12, 0x7f070060

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    .line 149
    sget-boolean v12, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v12, :cond_5

    .line 153
    const/4 v0, 0x0

    .line 159
    .local v0, bIsShowYomiLastNameOnly:Z
    if-eqz v0, :cond_3

    .line 161
    const v12, 0x7f07005c

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    .line 162
    const v12, 0x7f070060

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    .line 163
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 164
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 165
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    const v12, 0x7f0a02f6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :goto_1
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    const v13, 0x1020b1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 205
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    const v13, 0x1020b1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 206
    if-eqz v5, :cond_1

    .line 208
    const-string v12, "data7"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    .line 209
    const-string v12, "data9"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    .line 210
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .end local v0           #bIsShowYomiLastNameOnly:Z
    :cond_1
    :goto_2
    const-string v12, "data2"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 225
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string v12, "data3"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 227
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v12, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    invoke-direct {v12, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    .line 238
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->launchIME()V

    .line 240
    return-void

    .line 97
    .end local v1           #buttonlayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v10           #yomigana_firstname_label:Landroid/widget/TextView;
    .end local v11           #yomigana_lastname_label:Landroid/widget/TextView;
    :cond_2
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_FN_FIRST:I

    .line 98
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->DISPLAY_TYPE_LN_FIRST:I

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    .line 100
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    goto/16 :goto_0

    .line 189
    .restart local v0       #bIsShowYomiLastNameOnly:Z
    .restart local v1       #buttonlayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v10       #yomigana_firstname_label:Landroid/widget/TextView;
    .restart local v11       #yomigana_lastname_label:Landroid/widget/TextView;
    :cond_3
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 191
    const v12, 0x7f070060

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    .line 192
    const v12, 0x7f07005c

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    .line 193
    const v12, 0x7f0a02f5

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 194
    const v12, 0x7f0a02f4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_4
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 197
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 198
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 216
    .end local v0           #bIsShowYomiLastNameOnly:Z
    :cond_5
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 219
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 397
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->createSelectionDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 395
    .local v0, dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1110
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "firstname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    .line 273
    const-string v0, "lastname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    .line 274
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    .line 276
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLNEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    sget-boolean v0, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "yomiganafirstname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    .line 287
    const-string v0, "yomiganalastname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYFNEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYLNEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onResume()V

    .line 302
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 310
    const-string v0, "firstname"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "lastname"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "type"

    iget v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    sget-boolean v0, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "yomiganafirstname"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "yomiganalastname"

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mYomiganaLastName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onStop()V

    .line 334
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 243
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 244
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 245
    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 246
    return-void
.end method
