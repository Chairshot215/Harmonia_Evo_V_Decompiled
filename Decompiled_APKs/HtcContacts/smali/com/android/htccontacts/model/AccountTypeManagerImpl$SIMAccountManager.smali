.class Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SIMAccountManager"
.end annotation


# static fields
.field static final accountName:Ljava/lang/String; = "SIM"

.field static final accountType:Ljava/lang/String; = "com.anddroid.contacts.sim"


# instance fields
.field isSIMReady:Z

.field isSimAccountTypeLoaded:Z

.field private mSimAccountType:Lcom/android/htccontacts/model/SimAccountType;

.field private mSimAccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;

.field final synthetic this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->getAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method private getAccountType()Lcom/android/htccontacts/model/SimAccountType;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1306
    iget-boolean v4, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    if-nez v4, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-object v3

    .line 1309
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1311
    .local v1, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->getAccountIfReady()Landroid/accounts/Account;

    move-result-object v0

    .line 1312
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 1313
    new-instance v3, Lcom/android/htccontacts/model/SimAccountType;

    iget-object v4, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/model/SimAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountType:Lcom/android/htccontacts/model/SimAccountType;

    .line 1318
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountType:Lcom/android/htccontacts/model/SimAccountType;

    .line 1319
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1320
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountType:Lcom/android/htccontacts/model/SimAccountType;

    sget v4, Lcom/android/htccontacts/model/SIMAccount;->sUIMTitleId:I

    iput v4, v3, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 1325
    :goto_1
    sget v3, Lcom/android/htccontacts/model/SIMAccount;->sIconId:I

    iput v3, v2, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    .line 1326
    iput-boolean v6, v2, Lcom/android/htccontacts/model/AccountType;->canJoint:Z

    .line 1327
    iput-boolean v6, v2, Lcom/android/htccontacts/model/AccountType;->canSync:Z

    .line 1328
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 1329
    iget-object v3, v2, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 1332
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountType:Lcom/android/htccontacts/model/SimAccountType;

    goto :goto_0

    .line 1323
    :cond_2
    sget v3, Lcom/android/htccontacts/model/SIMAccount;->sTitleId:I

    iput v3, v2, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    goto :goto_1
.end method

.method private getAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 4

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-nez v0, :cond_0

    .line 1301
    new-instance v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "SIM"

    const-string v2, "com.anddroid.contacts.sim"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->mSimAccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1392
    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    .line 1407
    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSimAccountTypeLoaded:Z

    .line 1408
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1368
    iget-boolean v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    if-nez v0, :cond_0

    .line 1369
    iput-boolean v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    .line 1386
    iput-boolean v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSimAccountTypeLoaded:Z

    .line 1388
    :cond_0
    return-void
.end method

.method public ensure(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, accountTypesByTypeAndDataSet:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    .local p2, accountTypesByType:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;>;"
    .local p3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .local p4, contactWritableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .local p5, groupWritableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .local p6, accountTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    iget-boolean v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    if-eqz v2, :cond_0

    .line 1342
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->getAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v1

    .line 1343
    .local v1, accountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->getAccountType()Lcom/android/htccontacts/model/SimAccountType;

    move-result-object v0

    .line 1344
    .local v0, accountType:Lcom/android/htccontacts/model/SimAccountType;
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #calls: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v2, v0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$900(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 1352
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSimAccountTypeLoaded:Z

    .line 1355
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    .end local v0           #accountType:Lcom/android/htccontacts/model/SimAccountType;
    .end local v1           #accountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return-void

    .line 1358
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSimAccountTypeLoaded:Z

    goto :goto_0
.end method

.method public getAccountIfReady()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, account:Landroid/accounts/Account;
    iget-boolean v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    if-eqz v1, :cond_0

    .line 1294
    new-instance v0, Landroid/accounts/Account;

    .end local v0           #account:Landroid/accounts/Account;
    const-string v1, "SIM"

    const-string v2, "com.anddroid.contacts.sim"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    return-object v0
.end method

.method public setSIMReady(Z)V
    .locals 0
    .parameter "ready"

    .prologue
    .line 1363
    iput-boolean p1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->isSIMReady:Z

    .line 1364
    return-void
.end method
