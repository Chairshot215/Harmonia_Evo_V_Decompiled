.class public Lcom/htc/android/mail/AccountListDialogPicker;
.super Landroid/app/Activity;
.source "AccountListDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/AccountListDialogPicker$1;,
        Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

.field private mAccountListCursor:Landroid/database/MatrixCursor;

.field private mAccountNumber:I

.field private mIsEditAccount:Z

.field private mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

.field private mShowExchangeOnly:Z

.field private mShowSeparateAccountOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/AccountListDialogPicker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "AccountListDialogPicker"

    iput-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->TAG:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    .line 35
    iput-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/AccountListDialogPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowExchangeOnly:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/AccountListDialogPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/AccountListDialogPicker;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/AccountListDialogPicker;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/AccountListDialogPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/AccountListDialogPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/AccountListDialogPicker;)Lcom/htc/android/mail/widget/AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/AccountListDialogPicker;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/android/mail/AccountListDialogPicker;->getAccountIdByIndex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAccountIdByIndex(I)J
    .locals 5
    .parameter "index"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 223
    :cond_0
    const-wide/16 v0, -0x1

    .line 234
    :goto_0
    return-wide v0

    .line 228
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z

    if-nez v2, :cond_2

    .line 229
    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 233
    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListCursor:Landroid/database/MatrixCursor;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v0

    .line 234
    .local v0, id:J
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/android/mail/AccountListDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 49
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/htc/android/mail/AccountListDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/android/mail/AccountListDialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "show_exchange_only"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowExchangeOnly:Z

    .line 53
    const-string v2, "show_separate_account_only"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowSeparateAccountOnly:Z

    .line 54
    const-string v2, "editaccount"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mIsEditAccount:Z

    .line 55
    new-instance v2, Lcom/htc/android/mail/widget/AccountListAdapter;

    invoke-direct {v2, v5, p0}, Lcom/htc/android/mail/widget/AccountListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    .line 56
    new-instance v2, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    invoke-direct {v2, p0, v5}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;-><init>(Lcom/htc/android/mail/AccountListDialogPicker;Lcom/htc/android/mail/AccountListDialogPicker$1;)V

    iput-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    .line 57
    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->cancel(Z)Z

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    iget v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 66
    iget-boolean v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mShowExchangeOnly:Z

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/htc/android/mail/AccountListDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1 AND accounts._protocol=4"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, accountCursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 75
    .local v7, account_number:I
    iget v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I

    if-eq v0, v7, :cond_1

    .line 76
    sget-boolean v0, Lcom/htc/android/mail/AccountListDialogPicker;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->TAG:Ljava/lang/String;

    const-string v1, "account number changed"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->cancel(Z)Z

    .line 78
    iput v7, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mAccountNumber:I

    .line 79
    new-instance v0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;-><init>(Lcom/htc/android/mail/AccountListDialogPicker;Lcom/htc/android/mail/AccountListDialogPicker$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    .line 80
    iget-object v0, p0, Lcom/htc/android/mail/AccountListDialogPicker;->mLoadAccountListTask:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    .end local v6           #accountCursor:Landroid/database/Cursor;
    .end local v7           #account_number:I
    :cond_1
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/AccountListDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #accountCursor:Landroid/database/Cursor;
    goto :goto_0
.end method
