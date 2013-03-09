.class public Lcom/android/htccontacts/model/PCAccount;
.super Ljava/lang/Object;
.source "PCAccount.java"


# static fields
.field public static mIconId:I

.field private static mInstance:Lcom/android/htccontacts/model/PCAccount;

.field public static mTitleId:I


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f0a0029

    sput v0, Lcom/android/htccontacts/model/PCAccount;->mTitleId:I

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/model/PCAccount;->mIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/htccontacts/model/PCAccount;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/PCAccount;
    .locals 1
    .parameter "c"

    .prologue
    .line 23
    sget-object v0, Lcom/android/htccontacts/model/PCAccount;->mInstance:Lcom/android/htccontacts/model/PCAccount;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/htccontacts/model/PCAccount;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/model/PCAccount;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/model/PCAccount;->mInstance:Lcom/android/htccontacts/model/PCAccount;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/htccontacts/model/PCAccount;->mInstance:Lcom/android/htccontacts/model/PCAccount;

    return-object v0
.end method

.method private insertAccountToSetting()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/htccontacts/model/PCAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v2, v10

    const-string v1, "account_type"

    aput-object v1, v2, v11

    .line 68
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name"

    const-string v9, "pcsc"

    invoke-static {v5, v9}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "   AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "account_name"

    const-string v9, "com.htc.android.pcsc"

    invoke-static {v5, v9}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 72
    .local v8, isInsert:Z
    if-eqz v6, :cond_0

    .line 74
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v7, cv:Landroid/content/ContentValues;
    const-string v1, "account_name"

    const-string v4, "pcsc"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "account_type"

    const-string v4, "com.htc.android.pcsc"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "ungrouped_visible"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v1, "should_sync"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    if-nez v8, :cond_1

    .line 87
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 89
    :cond_1
    return-void

    .line 76
    .end local v7           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public ensurePCAccount()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/model/PCAccount;->insertAccountToSetting()V

    .line 49
    return-void
.end method

.method protected getOutlookAccountType(Landroid/content/Context;)Lcom/android/htccontacts/model/OutlookAccountType;
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, packageName:Ljava/lang/String;
    new-instance v1, Lcom/android/htccontacts/model/OutlookAccountType;

    invoke-direct {v1, p1}, Lcom/android/htccontacts/model/OutlookAccountType;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, source:Lcom/android/htccontacts/model/OutlookAccountType;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/model/AccountType;->canSync:Z

    .line 55
    sget v2, Lcom/android/htccontacts/model/PCAccount;->mTitleId:I

    iput v2, v1, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 56
    sget v2, Lcom/android/htccontacts/model/PCAccount;->mIconId:I

    iput v2, v1, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    .line 57
    iput-object v0, v1, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 58
    return-object v1
.end method

.method public getPCAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "pcsc"

    const-string v2, "com.htc.android.pcsc"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, account:Landroid/accounts/Account;
    return-object v0
.end method

.method public getPCAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "pcsc"

    const-string v2, "com.htc.android.pcsc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    return-object v0
.end method
