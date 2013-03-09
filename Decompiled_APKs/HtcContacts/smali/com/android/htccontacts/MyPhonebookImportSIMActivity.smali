.class public Lcom/android/htccontacts/MyPhonebookImportSIMActivity;
.super Lcom/android/htccontacts/ImportSIMActivity;
.source "MyPhonebookImportSIMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;
    }
.end annotation


# static fields
.field static final ACTION_DELETE_CONTACTS_ONLY:I = 0x0

.field static final ACTION_DELETE_IMPORT:I = 0x2

.field static final ACTION_IMPORT_SIM_ONLY:I = 0x1

.field static final ACTION_MYPHONEBOOK_DEFAULT:I = -0x1

.field static final MSG_CHECK_FIRST_SYNC:I = 0x2

.field static final MSG_CHECK_MYPHONEBOOK_CONTACTS:I = 0x3

.field static final MSG_CHECK_SIM_CHANGED:I = 0x1

.field static final MSG_CHECK_SIM_CONTACTS:I = 0x6

.field static final MSG_DELETE_MYPHONEBOOK_CONTACTS:I = 0x4

.field static final MSG_DELETE_MYPHONEBOOK_CONTACTS_DONE:I = 0x5

.field static final MSG_FINISH:I = 0x8

.field static final MSG_IMPORT_MYPHONEBOOK_CONTACTS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "MyPhonebookImportSIMActivity"


# instance fields
.field private mAction:I

.field private mBindServiceResult:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field mHandler:Landroid/os/Handler;

.field private mMyPhonebookCursor:Landroid/database/Cursor;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mService:Lcom/android/syncml/service/ISyncMLService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/ImportSIMActivity;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mBindServiceResult:Z

    .line 57
    new-instance v0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 70
    new-instance v0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    .line 306
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkSIMChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->startPickerToImportSIM()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkFirstSync()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkMyPhonebookContacts()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteContactsDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteFinishDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkSIMContacts()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showImportSIMContactsDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private checkFirstSync()V
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, isFirstSyncDoneOrSyncing:Z
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v2, :cond_2

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v2}, Lcom/android/syncml/service/ISyncMLService;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "Sync Service is not syncing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v2}, Lcom/android/syncml/service/ISyncMLService;->isSyncedWithTheServer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "First sync is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v1, 0x1

    .line 230
    :goto_1
    if-eqz v1, :cond_3

    .line 231
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "First Sync is finished or Sync Service is syncing, check SIM contacts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :goto_2
    return-void

    .line 213
    :cond_0
    :try_start_1
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "Sync Service is syncing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "First sync is not finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MyPhonebookImportSIMActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "checkFirstSync(), mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    :cond_3
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "First Sync is not finished and Sync Service is not syncing, check MyPhonebook contacts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private checkMyPhonebookContacts()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 240
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v5, "checkMyPhonebookContacts..."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 243
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    .line 246
    .local v2, CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 248
    .local v3, selection:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string v3, "ext_account_Type=\'com.htc.android.myphonebook\'"

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    .line 255
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 257
    .local v6, total:I
    if-lez v6, :cond_2

    .line 258
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v4, "MyPhonebook contact is existed, ask user to delete them or not..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    .end local v6           #total:I
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    const-string v3, "ext_account_Type=\'com.htc.android.pcsc\'"

    goto :goto_0

    .line 261
    .restart local v6       #total:I
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 262
    :cond_3
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v4, "MyPhone contact is not existed, check SIM contacts..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private checkSIMChanged()V
    .locals 3

    .prologue
    .line 195
    const-string v1, "gsm.sim.change"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    .local v0, isSIMChanged:Z
    if-eqz v0, :cond_0

    .line 198
    const-string v1, "MyPhonebookImportSIMActivity"

    const-string v2, "SIM is changed, check first sync..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v1, "MyPhonebookImportSIMActivity"

    const-string v2, "SIM is not changed, do nothing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->finish()V

    goto :goto_0
.end method

.method private checkSIMContacts()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 356
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v2, "checkSIMContacts..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 360
    .local v1, queryUri:Landroid/net/Uri;
    const-string v3, "ext_account_Type=\'com.anddroid.contacts.sim\'"

    .line 361
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "count(*) as total"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, simCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 364
    .local v7, total:I
    if-lez v7, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 365
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v2, "SIM contact is existed, ask user to imort them or not..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    .end local v7           #total:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_1
    return-void

    .line 368
    .restart local v7       #total:I
    :cond_2
    if-gtz v7, :cond_3

    .line 369
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v2, "SIM contact is not existed, do nothing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 371
    :cond_3
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v2, "No MyPhonebook account exists, do nothing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getMyPhonebookAccount()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 8

    .prologue
    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, rtn:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v5

    .line 419
    .local v5, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 420
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 422
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 423
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 424
    .local v0, acc:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v6, "com.htc.android.myphonebook"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 425
    move-object v3, v0

    .line 429
    .end local v0           #acc:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_0
    return-object v3

    .line 422
    .restart local v0       #acc:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPCAccount()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 4

    .prologue
    .line 433
    new-instance v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "pcsc"

    const-string v2, "com.htc.android.pcsc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v0, rtn:Lcom/android/htccontacts/model/AccountWithDataSet;
    return-object v0
.end method

.method private showDeleteContactsDialog()V
    .locals 4

    .prologue
    .line 272
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v1, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a02ed

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 274
    const v2, 0x7f0a02ee

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 275
    const v2, 0x7f0a038d

    new-instance v3, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 290
    const v2, 0x7f0a038e

    new-instance v3, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$4;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$4;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 301
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 302
    .local v0, ad:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 303
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 304
    return-void
.end method

.method private showDeleteFinishDialog()V
    .locals 4

    .prologue
    .line 333
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v1, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    const v2, 0x7f0a02ef

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 339
    :goto_0
    const v2, 0x7f0a038d

    new-instance v3, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 348
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 350
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 351
    .local v0, ad:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 352
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 353
    return-void

    .line 337
    .end local v0           #ad:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    const v2, 0x7f0a02f2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private showImportSIMContactsDialog()V
    .locals 4

    .prologue
    .line 382
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v1, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 388
    :goto_0
    const v2, 0x7f0a02f1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 389
    const v2, 0x7f0a038f

    new-instance v3, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$6;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$6;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 396
    const v2, 0x7f0a0390

    new-instance v3, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$7;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$7;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 403
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 404
    .local v0, ad:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 405
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 406
    return-void

    .line 386
    .end local v0           #ad:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    const v2, 0x7f0a02f3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private startPickerToImportSIM()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filter_account_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 412
    const-string v1, "DefaultCheckAll"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const v1, 0xf000

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 144
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "MyPhonebookImportProcessDone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, isImportProcessDone:Z
    if-nez p1, :cond_0

    .line 148
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .restart local p1
    :cond_0
    const-string v3, "skipLaunchPicker"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-super {p0, p1}, Lcom/android/htccontacts/ImportSIMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "action"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    .line 155
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    if-ne v3, v5, :cond_2

    .line 156
    const-string v3, "MyPhonebookImportSIMActivity"

    const-string v4, "MyPhonebook import process is done before, do nothing..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->finish()V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mBindServiceResult:Z

    .line 163
    const-string v3, "MyPhonebookImportSIMActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bind ISyncMLService result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mBindServiceResult:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mBindServiceResult:Z

    if-nez v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    const-string v3, "MyPhonebookImportSIMActivity"

    const-string v4, "unbindService..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getMyPhonebookAccount()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    .line 175
    :goto_1
    iget v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    packed-switch v3, :pswitch_data_0

    .line 185
    iget-object v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :goto_2
    invoke-static {}, Landroid/app/SyncConfig;->isMyCommunityeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/htc/util/contacts/TMOClient;->getInstance(Landroid/content/Context;Z)Lcom/htc/util/contacts/TMOClient;

    goto :goto_0

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getPCAccount()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    goto :goto_1

    .line 178
    :pswitch_0
    iget-object v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 181
    :pswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/htccontacts/ImportSIMActivity;->onDestroy()V

    .line 120
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "onDestroy..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mBindServiceResult:Z

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 124
    const-string v2, "MyPhonebookImportSIMActivity"

    const-string v3, "unbindService..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 130
    iput-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;

    .line 133
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MyPhonebookImportProcessDone"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    .end local v0           #sp:Landroid/content/SharedPreferences;
    .end local v1           #spEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method
