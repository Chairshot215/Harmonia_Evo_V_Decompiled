.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;,
        Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    }
.end annotation


# static fields
.field private static final PROJECTION_GROUPS:[Ljava/lang/String;

.field private static final PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

.field static final sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

.field static final sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field static final sEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

.field private mPhotoDownloads:I

.field private mPhotoUploads:I

.field private final mSpecialGroupsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    .line 80
    new-instance v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 92
    new-instance v0, Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/GroupHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    .line 93
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    .line 124
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_GROUPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mSpecialGroupsLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    new-instance v1, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;

    const-string v2, "Android-GData-Contacts/1.3"

    const-string v3, "5.0"

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    .line 165
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 167
    return-void
.end method

.method static addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V
    .locals 1
    .parameter
    .parameter "uri"
    .parameter "rowId"
    .parameter "allowYielding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    return-void
.end method

.method static addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
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
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1307
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1309
    if-eqz p3, :cond_0

    .line 1310
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1312
    :cond_0
    if-eqz p4, :cond_1

    .line 1313
    const-string v1, "raw_contact_id"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1316
    :cond_1
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 1317
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    return-void
.end method

.method static addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1322
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1324
    if-eqz p3, :cond_0

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1327
    :cond_0
    if-eqz p4, :cond_1

    .line 1328
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1329
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1331
    :cond_1
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 1332
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    return-void
.end method

.method private applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1282
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-virtual {p2, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1284
    const-string v1, "ContactsSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch applied successfully, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " results"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1299
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1301
    return-void

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    :try_start_1
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 1291
    :catch_1
    move-exception v0

    .line 1292
    :try_start_2
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :catch_2
    move-exception v0

    .line 1295
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error applying batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yield points succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 849
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v2

    .line 850
    const/4 v0, 0x0

    .line 852
    :try_start_0
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 883
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad operation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    .line 885
    :catch_0
    move-exception v1

    .line 886
    :try_start_1
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-eq v1, v5, :cond_0

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 892
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 898
    const/4 v1, 0x2

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    if-eqz v0, :cond_1

    .line 937
    invoke-static {v0, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_1
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 941
    :goto_0
    return-void

    .line 854
    :pswitch_0
    :try_start_2
    const-string v1, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    const-string v1, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserting with entry =====\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_2
    or-int/lit8 v0, v2, 0x1

    .line 858
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 859
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    invoke-virtual {p3, v1, p4, v3}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    .line 936
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 937
    invoke-static {v0, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_4
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    .line 863
    :pswitch_1
    :try_start_3
    const-string v1, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 864
    const-string v1, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating with entry =====\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_5
    or-int/lit8 v0, v2, 0x2

    .line 867
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 868
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 902
    :catch_1
    move-exception v1

    .line 903
    :try_start_4
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_d

    .line 905
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 936
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 937
    invoke-static {v0, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_7
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 872
    :pswitch_2
    or-int/lit8 v0, v2, 0x3

    .line 873
    :try_start_5
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 874
    const-string v1, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 875
    const-string v1, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_8
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 878
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->etag:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, p4, v3}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 912
    :catch_2
    move-exception v1

    .line 913
    :try_start_6
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_f

    .line 915
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 936
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 937
    invoke-static {v0, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_a
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 900
    :cond_b
    :try_start_7
    new-instance v1, Lcom/google/wireless/gdata2/ConflictDetectedException;

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 936
    :catchall_0
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_c

    .line 937
    invoke-static {v1, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_c
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    .line 906
    :cond_d
    :try_start_8
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v6, :cond_e

    .line 908
    const/4 v1, 0x3

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    goto :goto_2

    .line 909
    :cond_e
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v7, :cond_6

    goto/16 :goto_2

    .line 916
    :cond_f
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v6, :cond_10

    .line 918
    const/4 v1, 0x3

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    goto :goto_3

    .line 919
    :cond_10
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v7, :cond_9

    goto :goto_3

    .line 922
    :catch_3
    move-exception v1

    .line 923
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_13

    .line 925
    const/4 v1, 0x3

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 936
    :cond_11
    :goto_5
    if-eqz v0, :cond_12

    .line 937
    invoke-static {v0, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 939
    :cond_12
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 926
    :cond_13
    :try_start_9
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_11

    goto :goto_5

    .line 929
    :catch_4
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 930
    :try_start_a
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_14

    .line 931
    new-instance v3, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v3

    .line 936
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 933
    :cond_14
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received unhandled http error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 947
    :try_start_0
    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    .line 950
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 952
    :cond_0
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when redownloading the entry due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in response to an operation of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 955
    :catch_1
    move-exception v0

    .line 956
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when redownloading the entry due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in response to an operation of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "client"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 678
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 683
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 687
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 688
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/GDataSyncState;
    .locals 10
    .parameter "account"
    .parameter "provider"
    .parameter "groupFeed"
    .parameter "contactFeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v6, 0x0

    .line 517
    .local v6, syncStateChanged:Z
    invoke-static {p1, p0}, Lcom/google/android/syncadapters/GDataSyncState;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v5

    .line 518
    .local v5, syncState:Lcom/google/android/syncadapters/GDataSyncState;
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 521
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v7, "feed_uri"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 523
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 524
    const/4 v6, 0x1

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 530
    .local v0, createNewContactFeedSyncState:Z
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 531
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "No contacts feed data; creating new feedSyncState..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x1

    .line 547
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 548
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v2, feedSyncState:Landroid/os/Bundle;
    const-string v7, "feed_uri"

    invoke-virtual {v2, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v7, "last_feed_version"

    const-string v8, "5.0"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    const/4 v6, 0x1

    .line 556
    .end local v2           #feedSyncState:Landroid/os/Bundle;
    :cond_2
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 557
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 558
    .restart local v2       #feedSyncState:Landroid/os/Bundle;
    const-string v7, "feed_uri"

    invoke-virtual {v2, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 561
    const/4 v6, 0x1

    .line 564
    .end local v2           #feedSyncState:Landroid/os/Bundle;
    :cond_3
    if-eqz v6, :cond_4

    .line 565
    invoke-virtual {v5, p1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 567
    :cond_4
    return-object v5

    .line 535
    :cond_5
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 536
    .local v4, lastSyncState:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 537
    .local v3, lastFeedVersion:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 538
    const-string v7, "last_feed_version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    :cond_6
    const-string v7, "5.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 541
    const-string v7, "ContactsSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Feed version mismatch: lastFeedVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "5.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "Creating new feedSyncState..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;I)V
    .locals 36
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/lang/String;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/GDataSyncState;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1067
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting getServerDiffs for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_2
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x32

    invoke-direct {v7, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1072
    new-instance v18, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x32

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1075
    const/4 v14, 0x0

    .line 1076
    const/16 v23, 0x0

    .line 1078
    const/16 v22, 0x0

    .line 1079
    const/16 v24, 0x0

    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 1082
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 1083
    const-string v4, "feed_uri"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1084
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v34

    .line 1085
    or-int v4, v34, p8

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1087
    :try_start_0
    const-string v4, "feed_updated_time"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "lastFetchedIndex"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1089
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1090
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no last updated time present for feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparing for full sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V

    .line 1096
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_contacts_sync_num_events_per_batch"

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1100
    new-instance v4, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v13

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v13}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;-><init>(Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_7

    .line 1103
    :try_start_1
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "GDataFeedFetcher"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1106
    new-instance v12, Lcom/google/android/syncadapters/EntityReader;

    const-string v13, "ContactsSyncAdapter"

    sget-object v17, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    sget-object v19, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    const-string v21, "sourceid"

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    move-object/from16 v16, v7

    move-object/from16 v20, p6

    invoke-direct/range {v12 .. v21}, Lcom/google/android/syncadapters/EntityReader;-><init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1109
    :try_start_2
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "EntityReader"

    invoke-direct {v5, v12, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1112
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1113
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "starting processing of fetched entries"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_5
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v28

    .line 1118
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v29

    .line 1119
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v30

    .line 1121
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1125
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v31

    move/from16 v7, v24

    move/from16 v6, v22

    .line 1127
    :goto_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1128
    const-string v5, "ContactsSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1129
    const-string v5, "ContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServerDiffs: noticed a cancel during feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bailing out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1240
    :cond_6
    or-int v5, v34, p8

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v5, "FAILURE"

    .line 1246
    const-string v10, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v32

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v4, :cond_9

    .line 1252
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1254
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1257
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_8
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_9
    if-eqz v12, :cond_0

    .line 1262
    :goto_2
    invoke-virtual {v12}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 1135
    :cond_a
    :try_start_4
    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 1136
    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    if-ne v5, v8, :cond_e

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1197
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isPartialSyncUnavailable()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1198
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V

    .line 1199
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "partial sync unavailable for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1222
    :catch_0
    move-exception v5

    move-object v5, v4

    move v4, v6

    .line 1223
    :goto_3
    :try_start_5
    const-string v6, "ContactsSyncAdapter"

    const-string v7, "getServerDiffs failed due to an IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1240
    or-int v6, v34, p8

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v6, "FAILURE"

    .line 1246
    const-string v10, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ": processed "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " records in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v7, v32

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms from feed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", updated time is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v5, :cond_d

    .line 1252
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1254
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1257
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_c
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_d
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1141
    :cond_e
    :try_start_6
    iget-object v0, v5, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entry:Lcom/google/wireless/gdata2/data/Entry;

    move-object/from16 v24, v0

    .line 1142
    iget-object v0, v5, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entity:Landroid/content/Entity;

    move-object/from16 v25, v0

    .line 1143
    iget v5, v5, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entryIndex:I

    .line 1144
    const-string v8, "ContactsSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "ContactsSyncAdapterFine"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1145
    :cond_f
    const-string v8, "ContactsSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calling applyEntryToEntity for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_10
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v8

    .line 1158
    if-eqz v25, :cond_11

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 1161
    :cond_11
    const/16 v26, 0x0

    move-object/from16 v19, p6

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p7

    move-object/from16 v27, p4

    invoke-interface/range {v19 .. v31}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1174
    :cond_12
    :try_start_8
    const-string v8, "lastFetchedId"

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v8, "lastFetchedIndex"

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    const-string v8, "ContactsSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "ContactsSyncAdapterP"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1177
    :cond_13
    const-string v8, "ContactsSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " of "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/syncadapters/GDataSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    add-int/lit8 v6, v6, 0x1

    .line 1182
    add-int/lit8 v5, v7, 0x1

    .line 1183
    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v7, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v7, Landroid/content/SyncStats;->numEntries:J

    .line 1184
    const/16 v7, 0x14

    if-ge v5, v7, :cond_15

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_17

    .line 1186
    :cond_15
    const/4 v5, 0x0

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1188
    const-string v7, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1190
    :cond_16
    const-string v7, "ContactsSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applied "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " records in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v32

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms from feed "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move v7, v5

    .line 1195
    goto/16 :goto_1

    .line 1165
    :catch_1
    move-exception v5

    .line 1168
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1225
    :catch_2
    move-exception v5

    move-object v14, v4

    move-object v4, v5

    .line 1226
    :goto_4
    :try_start_9
    const-string v5, "ContactsSyncAdapter"

    const-string v7, "getServerDiffs failed"

    invoke-static {v5, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    iput-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1240
    or-int v4, v34, p8

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v4, "FAILURE"

    .line 1246
    const-string v5, "ContactsSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ": processed "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " records in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v7, v32

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms from feed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", updated time is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v14, :cond_1a

    .line 1252
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1254
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_18
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1257
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_19
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_1a
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1170
    :catch_3
    move-exception v5

    .line 1171
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 1228
    :catch_4
    move-exception v5

    move-object v14, v4

    move-object v4, v5

    .line 1229
    :goto_5
    :try_start_b
    const-string v5, "ContactsSyncAdapter"

    const-string v7, "getServerDiffs failed"

    invoke-static {v5, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1230
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    iput-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1240
    or-int v4, v34, p8

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v4, "FAILURE"

    .line 1246
    const-string v5, "ContactsSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ": processed "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " records in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v7, v32

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms from feed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", updated time is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v14, :cond_1d

    .line 1252
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1254
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_1b
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1257
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_1c
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_1d
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1201
    :cond_1e
    :try_start_c
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1202
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connection failed during feed read of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_c .. :try_end_c} :catch_6

    .line 1231
    :catch_5
    move-exception v5

    .line 1232
    :goto_6
    :try_start_d
    const-string v5, "ContactsSyncAdapter"

    const-string v7, "getServerDiffs interrupted, canceling the sync"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1240
    or-int v5, v34, p8

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v5, "FAILURE"

    .line 1246
    const-string v10, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v32

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v4, :cond_21

    .line 1252
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1254
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_1f
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1257
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_20
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_21
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1204
    :cond_22
    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->resumptionFailed()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1205
    const-string v5, "lastFetchedId"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1206
    const-string v5, "lastFetchedIndex"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1208
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumption failed during feed read of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_e .. :try_end_e} :catch_6

    .line 1234
    :catch_6
    move-exception v5

    move-object v14, v4

    move-object v4, v5

    .line 1235
    :goto_7
    :try_start_f
    const-string v5, "ContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServerDiffs failed due to a ResourceUnavailableException, retryAfter is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    iput-wide v7, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1238
    move-object/from16 v0, p4

    iget-wide v7, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p4

    iput-wide v4, v0, Landroid/content/SyncResult;->delayUntil:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1240
    or-int v4, v34, p8

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v4, "FAILURE"

    .line 1246
    const-string v5, "ContactsSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ": processed "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " records in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v7, v32

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms from feed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", updated time is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v14, :cond_25

    .line 1252
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1254
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_23
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1257
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_24
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_25
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1210
    :cond_26
    :try_start_10
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isUnparsableFeed()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1211
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unparsable feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1240
    :catchall_0
    move-exception v5

    move-object v14, v4

    move-object v4, v5

    :goto_8
    or-int v5, v34, p8

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v5, "FAILURE"

    .line 1246
    const-string v10, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v32

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v14, :cond_29

    .line 1252
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1254
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_27
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1257
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_28
    invoke-virtual {v14}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_29
    if-eqz v12, :cond_2a

    .line 1262
    invoke-virtual {v12}, Lcom/google/android/syncadapters/EntityReader;->close()V

    .line 1240
    :cond_2a
    throw v4

    .line 1213
    :cond_2b
    :try_start_11
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isResourceUnavailable()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1214
    new-instance v5, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getRetryAfter()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v5

    .line 1216
    :cond_2c
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1217
    new-instance v5, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>()V

    throw v5

    .line 1219
    :cond_2d
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1240
    or-int v5, v34, p8

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1241
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1242
    const-string v5, "ContactsSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "ContactsSyncAdapterP"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1244
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1245
    const-string v5, "SUCCESS"

    .line 1246
    const-string v10, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v32

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_2f
    if-eqz v4, :cond_32

    .line 1252
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1253
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1254
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1256
    :cond_30
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1257
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1259
    :cond_31
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1261
    :cond_32
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 1240
    :catchall_1
    move-exception v4

    move/from16 v6, v22

    move-object/from16 v12, v23

    goto/16 :goto_8

    :catchall_2
    move-exception v5

    move/from16 v6, v22

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_8

    :catchall_3
    move-exception v5

    move/from16 v6, v22

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_8

    :catchall_4
    move-exception v6

    move-object v14, v5

    move/from16 v35, v4

    move-object v4, v6

    move/from16 v6, v35

    goto/16 :goto_8

    :catchall_5
    move-exception v4

    goto/16 :goto_8

    .line 1234
    :catch_7
    move-exception v4

    move/from16 v6, v22

    move-object/from16 v12, v23

    goto/16 :goto_7

    :catch_8
    move-exception v5

    move/from16 v6, v22

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_7

    :catch_9
    move-exception v5

    move/from16 v6, v22

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_7

    .line 1231
    :catch_a
    move-exception v4

    move/from16 v6, v22

    move-object/from16 v12, v23

    move-object v4, v14

    goto/16 :goto_6

    :catch_b
    move-exception v5

    move/from16 v6, v22

    move-object/from16 v12, v23

    goto/16 :goto_6

    :catch_c
    move-exception v5

    move/from16 v6, v22

    goto/16 :goto_6

    .line 1228
    :catch_d
    move-exception v4

    move/from16 v6, v22

    move-object/from16 v12, v23

    goto/16 :goto_5

    :catch_e
    move-exception v5

    move/from16 v6, v22

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_5

    :catch_f
    move-exception v5

    move/from16 v6, v22

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 1225
    :catch_10
    move-exception v4

    move/from16 v6, v22

    move-object/from16 v12, v23

    goto/16 :goto_4

    :catch_11
    move-exception v5

    move/from16 v6, v22

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_4

    :catch_12
    move-exception v5

    move/from16 v6, v22

    move-object v14, v4

    move-object v4, v5

    goto/16 :goto_4

    .line 1222
    :catch_13
    move-exception v4

    move/from16 v4, v22

    move-object/from16 v12, v23

    move-object v5, v14

    goto/16 :goto_3

    :catch_14
    move-exception v5

    move-object/from16 v12, v23

    move-object v5, v4

    move/from16 v4, v22

    goto/16 :goto_3

    :catch_15
    move-exception v5

    move-object v5, v4

    move/from16 v4, v22

    goto/16 :goto_3
.end method

.method private innerPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/contacts/AuthInfo;)V
    .locals 32
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "authInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 208
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performSync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const-string v4, "initialize"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 217
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "@youtube.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 348
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 224
    :cond_3
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v23

    .line 225
    .local v23, groupFeed:Ljava/lang/String;
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v21

    .line 226
    .local v21, contactsFeed:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContactsSyncSet(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/Set;

    move-result-object v11

    .line 227
    .local v11, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 228
    const-string v4, "?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 233
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "group="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 236
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v9

    .line 245
    .local v9, syncState:Lcom/google/android/syncadapters/GDataSyncState;
    const-string v4, "upload"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 246
    .local v30, uploadOnly:Z
    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->stillDoingInitialSync(Lcom/google/android/syncadapters/GDataSyncState;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 247
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 248
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "still doing the initial sync so forcing this uploadOnly sync to be a two-way sync"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5
    const/16 v30, 0x0

    .line 254
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, authToken:Ljava/lang/String;
    const-string v4, "deletions_override"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 261
    .local v18, overrideTooManyDeletions:Z
    const-string v4, "discard_deletions"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 263
    .local v22, discardLocalDeletions:Z
    if-eqz v22, :cond_7

    .line 265
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v31, values:Landroid/content/ContentValues;
    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "deleted=1"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V

    .line 271
    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "deleted=1"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 277
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v20

    .line 278
    .local v20, activeTag:I
    if-nez v30, :cond_d

    .line 279
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 280
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "fetching changes from server"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_8
    const-string v4, "feed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 284
    .local v29, specificFeedToFetch:Ljava/lang/String;
    if-eqz v29, :cond_9

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 285
    :cond_9
    sget-object v10, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    const/high16 v12, 0x200

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;I)V

    .line 287
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    :cond_a
    if-eqz v29, :cond_b

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 293
    :cond_b
    sget-object v10, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    const/high16 v12, 0x100

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;I)V

    .line 295
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 300
    :cond_c
    const/high16 v4, 0x100

    or-int v4, v4, v20

    or-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 302
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v7, v2, v5}, Lcom/google/android/syncadapters/contacts/ContactHandler;->downloadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const/high16 v4, 0x100

    or-int v4, v4, v20

    or-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 306
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 308
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    .end local v29           #specificFeedToFetch:Ljava/lang/String;
    :cond_d
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 315
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "scanning for local changes to send to server"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_e
    const/16 v24, 0x0

    .local v24, i:I
    :goto_3
    const/4 v4, 0x6

    move/from16 v0, v24

    if-ge v0, v4, :cond_f

    .line 318
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v4, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v6, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v4, v12

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v6, Landroid/content/SyncStats;->numDeletes:J

    add-long v27, v4, v12

    .line 321
    .local v27, numChangesBefore:J
    sget-object v17, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    const/high16 v19, 0x100

    move-object/from16 v12, p0

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    move-object v15, v11

    move-object/from16 v16, p5

    invoke-virtual/range {v12 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;ZI)V

    .line 324
    sget-object v17, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    const/high16 v19, 0x200

    move-object/from16 v12, p0

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    move-object v15, v11

    move-object/from16 v16, p5

    invoke-virtual/range {v12 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;ZI)V

    .line 327
    const/high16 v4, 0x100

    or-int v4, v4, v20

    or-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 329
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v7, v2, v4}, Lcom/google/android/syncadapters/contacts/ContactHandler;->uploadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    const/high16 v4, 0x100

    or-int v4, v4, v20

    or-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 333
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 336
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v4, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v6, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v4, v12

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v6, Landroid/content/SyncStats;->numDeletes:J

    add-long v25, v4, v12

    .line 338
    .local v25, numChangesAfter:J
    cmp-long v4, v25, v27

    if-nez v4, :cond_11

    .line 343
    .end local v25           #numChangesAfter:J
    .end local v27           #numChangesBefore:J
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 345
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "performSync: sync is complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    .end local v7           #authToken:Ljava/lang/String;
    .end local v9           #syncState:Lcom/google/android/syncadapters/GDataSyncState;
    .end local v18           #overrideTooManyDeletions:Z
    .end local v20           #activeTag:I
    .end local v22           #discardLocalDeletions:Z
    .end local v24           #i:I
    .end local v30           #uploadOnly:Z
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 305
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v9       #syncState:Lcom/google/android/syncadapters/GDataSyncState;
    .restart local v18       #overrideTooManyDeletions:Z
    .restart local v20       #activeTag:I
    .restart local v22       #discardLocalDeletions:Z
    .restart local v29       #specificFeedToFetch:Ljava/lang/String;
    .restart local v30       #uploadOnly:Z
    :catchall_0
    move-exception v4

    const/high16 v5, 0x100

    or-int v5, v5, v20

    or-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 306
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v4

    .line 332
    .end local v29           #specificFeedToFetch:Ljava/lang/String;
    .restart local v24       #i:I
    .restart local v27       #numChangesBefore:J
    :catchall_1
    move-exception v4

    const/high16 v5, 0x100

    or-int v5, v5, v20

    or-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 333
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v4

    .line 317
    .restart local v25       #numChangesAfter:J
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "account"
    .parameter "groupFeed"
    .parameter "contactsFeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 573
    .local v11, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 580
    .local v9, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 581
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "feed"

    aput-object v5, v3, v4

    const-string v4, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x2

    const-string v17, "com.android.contacts"

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 587
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 588
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 592
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 594
    .local v14, id:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 595
    .local v12, feed:Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 598
    .end local v12           #feed:Ljava/lang/String;
    .end local v14           #id:J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 602
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 603
    .local v10, expectedFeed:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 605
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "_sync_account"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v2, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "feed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v2, "service"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, "authority"

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 613
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 616
    .end local v10           #expectedFeed:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 618
    .local v8, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 619
    .restart local v14       #id:J
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 622
    .end local v8           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14           #id:J
    :cond_5
    return-void
.end method

.method private resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p2, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1003
    const-string v1, "feed_updated_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1004
    const-string v1, "do_incremental_sync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1005
    const-string v1, "lastFetchedId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1006
    const-string v1, "lastFetchedIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2, p1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1008
    return-void
.end method

.method private sendEntityToServer(Ljava/util/Set;Landroid/content/Entity;Lcom/google/android/syncadapters/contacts/AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Entity;",
            "Lcom/google/android/syncadapters/contacts/AuthInfo;",
            "Lcom/google/wireless/gdata2/client/GDataServiceClient;",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v3, v2, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    .line 796
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 797
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v3

    .line 805
    :goto_0
    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v4

    .line 807
    :try_start_0
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 808
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "sending operation to server"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_1
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "applying resulting entry to entity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 844
    :cond_2
    :goto_2
    return-void

    .line 798
    :cond_3
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 799
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v3

    goto :goto_0

    .line 801
    :cond_4
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newUpdate(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v3

    goto :goto_0

    .line 811
    :catch_0
    move-exception v5

    .line 813
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->invalidateAuthToken()V

    .line 814
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :pswitch_0
    const/4 v4, 0x0

    #setter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 827
    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 829
    :try_start_1
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    #getter for: Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v3, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-interface/range {v3 .. v15}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 833
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 834
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 835
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "results are: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 837
    :catch_1
    move-exception v3

    .line 838
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error applying batch"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 839
    :catch_2
    move-exception v3

    .line 840
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error applying batch"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1272
    const-string v0, "ContactsSyncAdapter"

    const-string v1, "Entry failed, skipping "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 1275
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1277
    :cond_0
    return-void
.end method

.method private stillDoingInitialSync(Lcom/google/android/syncadapters/GDataSyncState;)Z
    .locals 4
    .parameter "syncState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v2, p1, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-virtual {v3}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "do_incremental_sync"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget-object v2, p1, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "do_incremental_sync"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 359
    goto :goto_0
.end method

.method private updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1017
    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local android etag magic value"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-interface {p3, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method private updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1025
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1027
    iget-object v1, p3, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1028
    const-string v2, "feed_updated_time"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v2, "lastFetchedId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1030
    const-string v2, "lastFetchedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1032
    const-string v2, "do_incremental_sync"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1033
    const-string v2, "ContactsSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    const-string v2, "ContactsSyncAdapter"

    const-string v3, "switching from full to incremental"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    invoke-interface {p4, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "local android etag magic value"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    const-string v2, "do_incremental_sync"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1048
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/syncadapters/GDataSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1057
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1054
    :catch_1
    move-exception v0

    .line 1055
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V
    .locals 32
    .parameter "accounts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mSpecialGroupsLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 365
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v17

    .line 366
    .local v17, hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v16

    .line 367
    .local v16, hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 368
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_GROUPS:[Ljava/lang/String;

    const-string v5, "account_type=? AND data_set IS NULL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v31, "com.google"

    aput-object v31, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 372
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 373
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3

    .line 510
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 376
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v16       #hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17       #hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 377
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 378
    .local v26, systemId:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, accountName:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/4 v11, 0x1

    .line 380
    .local v11, autoAddBit:Z
    :goto_1
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const/4 v13, 0x1

    .line 381
    .local v13, favoritesBit:Z
    :goto_2
    const/4 v3, 0x5

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 382
    .local v22, rowId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 383
    .local v27, title:Ljava/lang/String;
    const/4 v3, 0x6

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 384
    .local v25, sourceId:Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    const/4 v14, 0x1

    .line 388
    .local v14, groupIsReadOnlyBit:Z
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    const-string v3, "Starred in Android"

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 395
    .local v19, isFavoritesGroup:Z
    const-string v3, "Contacts"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "System Group: My Contacts"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v26, :cond_6

    if-nez v25, :cond_6

    :cond_1
    const/16 v20, 0x1

    .line 408
    .local v20, isMyContactsGroup:Z
    :goto_4
    if-eqz v20, :cond_7

    .line 409
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v3, "My Contacts"

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Contacts"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v11, :cond_2

    if-nez v14, :cond_0

    .line 415
    :cond_2
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v29, values:Landroid/content/ContentValues;
    const-string v3, "auto_add"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v3, "system_id"

    const-string v4, "Contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v3, "group_is_read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v3, "title"

    const-string v4, "My Contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 459
    .end local v9           #accountName:Ljava/lang/String;
    .end local v11           #autoAddBit:Z
    .end local v13           #favoritesBit:Z
    .end local v14           #groupIsReadOnlyBit:Z
    .end local v19           #isFavoritesGroup:Z
    .end local v20           #isMyContactsGroup:Z
    .end local v22           #rowId:J
    .end local v25           #sourceId:Ljava/lang/String;
    .end local v26           #systemId:Ljava/lang/String;
    .end local v27           #title:Ljava/lang/String;
    .end local v29           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    .restart local v9       #accountName:Ljava/lang/String;
    .restart local v26       #systemId:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 380
    .restart local v11       #autoAddBit:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 384
    .restart local v13       #favoritesBit:Z
    .restart local v22       #rowId:J
    .restart local v25       #sourceId:Ljava/lang/String;
    .restart local v27       #title:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 395
    .restart local v14       #groupIsReadOnlyBit:Z
    .restart local v19       #isFavoritesGroup:Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_4

    .line 425
    .restart local v20       #isMyContactsGroup:Z
    :cond_7
    if-eqz v26, :cond_a

    .line 426
    if-eqz v27, :cond_c

    :try_start_3
    const-string v3, "System Group: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v28, 0x1

    .line 428
    .local v28, titleStillHasSystemGroup:Z
    :goto_5
    if-nez v28, :cond_8

    if-nez v11, :cond_8

    if-nez v14, :cond_a

    .line 431
    :cond_8
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .restart local v29       #values:Landroid/content/ContentValues;
    const-string v3, "auto_add"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v3, "group_is_read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    if-eqz v28, :cond_9

    .line 435
    const-string v3, "System Group: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 437
    .local v24, shortTitle:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .end local v24           #shortTitle:Ljava/lang/String;
    :cond_9
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    .end local v28           #titleStillHasSystemGroup:Z
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_a
    if-eqz v19, :cond_0

    .line 446
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    if-eqz v13, :cond_b

    if-nez v14, :cond_0

    .line 449
    :cond_b
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .restart local v29       #values:Landroid/content/ContentValues;
    const-string v3, "favorites"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v3, "group_is_read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 426
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 459
    .end local v9           #accountName:Ljava/lang/String;
    .end local v11           #autoAddBit:Z
    .end local v13           #favoritesBit:Z
    .end local v14           #groupIsReadOnlyBit:Z
    .end local v19           #isFavoritesGroup:Z
    .end local v20           #isMyContactsGroup:Z
    .end local v22           #rowId:J
    .end local v25           #sourceId:Ljava/lang/String;
    .end local v26           #systemId:Ljava/lang/String;
    .end local v27           #title:Ljava/lang/String;
    :cond_d
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 463
    move-object/from16 v10, p1

    .local v10, arr$:[Landroid/accounts/Account;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget-object v8, v10, v18

    .line 464
    .local v8, account:Landroid/accounts/Account;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v15

    .line 465
    .local v15, groupsUri:Landroid/net/Uri;
    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 466
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .restart local v29       #values:Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "My Contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v3, "system_id"

    const-string v4, "Contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v3, "group_visible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v3, "group_is_read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    const-string v3, "auto_add"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    move-object/from16 v0, v29

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 474
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_e
    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 475
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .restart local v29       #values:Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "Starred in Android"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v3, "group_visible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string v3, "group_is_read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    const-string v3, "favorites"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    move-object/from16 v0, v29

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 463
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 487
    .end local v8           #account:Landroid/accounts/Account;
    .end local v15           #groupsUri:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_13

    .line 488
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

    const-string v5, "account_name is null AND account_type is null"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 492
    if-nez v12, :cond_11

    .line 493
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 497
    :cond_11
    const/4 v3, 0x0

    :try_start_5
    aget-object v8, p1, v3

    .line 498
    .restart local v8       #account:Landroid/accounts/Account;
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .restart local v29       #values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v3, "account_type"

    iget-object v4, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 502
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "account_name is null AND account_type is null"

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    .line 507
    .end local v8           #account:Landroid/accounts/Account;
    .end local v29           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v3

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v8       #account:Landroid/accounts/Account;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 510
    .end local v8           #account:Landroid/accounts/Account;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_13
    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 511
    return-void
.end method

.method getContactsSyncSet(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/Set;
    .locals 11
    .parameter "contactsProvider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 626
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v10

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 632
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 636
    :cond_0
    const/4 v8, 0x1

    .line 637
    .local v8, syncEverything:Z
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    move v8, v9

    :goto_1
    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_1

    .line 641
    :cond_2
    if-eqz v8, :cond_3

    .line 657
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    return-object v3

    .line 645
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sourceid"

    aput-object v3, v2, v0

    const-string v3, "data_set is null AND should_sync!=0 AND sourceid is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 652
    .local v7, groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 653
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 657
    .end local v7           #groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    goto :goto_2
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1362
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 1363
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1365
    :cond_0
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 1366
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1368
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 1369
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1371
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 1372
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1374
    :cond_3
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    if-lez v0, :cond_4

    .line 1375
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1377
    :cond_4
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    if-lez v0, :cond_5

    .line 1378
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1380
    :cond_5
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    return-void
.end method

.method protected hasTooManyChanges(JJ)Z
    .locals 5
    .parameter "numEntries"
    .parameter "numChanges"

    .prologue
    const-wide/16 v0, 0x0

    .line 667
    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 670
    .local v0, percentChanged:J
    :goto_0
    const-wide/16 v3, 0x5

    cmp-long v3, p3, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x14

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .line 673
    .local v2, tooMany:Z
    :goto_1
    return v2

    .line 667
    .end local v0           #percentChanged:J
    .end local v2           #tooMany:Z
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    goto :goto_0

    .line 670
    .restart local v0       #percentChanged:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1352
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1353
    invoke-virtual {p0, v0, p5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 1354
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1356
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    .line 174
    new-instance v6, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "cp"

    invoke-direct {v6, v0, p1, v1}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 175
    .local v6, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    const/high16 v1, 0x4

    or-int v8, v0, v1

    .line 178
    .local v8, tag:I
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 180
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->innerPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/contacts/AuthInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 193
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 196
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v7

    .line 182
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 183
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 184
    .local v7, e:Ljava/io/IOException;
    :try_start_2
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 185
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 186
    .local v7, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/syncadapters/contacts/AuthInfo;->invalidateAuthToken()V

    .line 187
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 188
    const-string v0, "ContactsSyncAdapter"

    const-string v1, "innerSync failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 189
    .end local v7           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_3
    move-exception v0

    .line 193
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v8, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method

.method processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;ZI)V
    .locals 24
    .parameter "authInfo"
    .parameter "provider"
    .parameter
    .parameter "syncResult"
    .parameter "handler"
    .parameter "overrideTooManyDeletions"
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/syncadapters/contacts/AuthInfo;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 698
    .local p3, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v18

    .line 706
    .local v18, activeTag:I
    or-int v2, v18, p7

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 712
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_set IS NULL AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEditUriColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != 0 OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != 0)))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, selection:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 720
    .local v22, iterator:Landroid/content/EntityIterator;
    if-nez p6, :cond_6

    .line 721
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "data_set IS NULL"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 723
    .local v23, total:I
    const/16 v19, 0x0

    .line 724
    .local v19, deletes:I
    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 776
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 782
    or-int v2, v18, p7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 728
    :cond_2
    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    .line 729
    .local v9, entity:Landroid/content/Entity;
    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v21, 0x1

    .line 731
    .local v21, isDeleted:Z
    :goto_2
    if-eqz v21, :cond_1

    .line 732
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 729
    .end local v21           #isDeleted:Z
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 735
    .end local v9           #entity:Landroid/content/Entity;
    :cond_4
    move/from16 v0, v23

    int-to-long v2, v0

    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->hasTooManyChanges(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 736
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not doing any more updates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v2}, Landroid/content/SyncStats;->clear()V

    .line 739
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move/from16 v0, v23

    int-to-long v3, v0

    iput-wide v3, v2, Landroid/content/SyncStats;->numEntries:J

    .line 740
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move/from16 v0, v19

    int-to-long v3, v0

    iput-wide v3, v2, Landroid/content/SyncStats;->numDeletes:J

    .line 741
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 742
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    :try_start_4
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 782
    or-int v2, v18, p7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 745
    :cond_5
    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->reset()V

    .line 748
    .end local v19           #deletes:I
    .end local v23           #total:I
    :cond_6
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v15

    .line 750
    .local v15, rawContactsUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v16

    .line 752
    .local v16, dataUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v17

    .line 755
    .local v17, groupsUri:Landroid/net/Uri;
    :goto_3
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 776
    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 782
    or-int v2, v18, p7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 759
    :cond_7
    :try_start_7
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 761
    .restart local v9       #entity:Landroid/content/Entity;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p4

    invoke-direct/range {v7 .. v17}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sendEntityToServer(Ljava/util/Set;Landroid/content/Entity;Lcom/google/android/syncadapters/contacts/AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 763
    :catch_0
    move-exception v20

    .line 764
    .local v20, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_9
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error with entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 776
    .end local v9           #entity:Landroid/content/Entity;
    .end local v15           #rawContactsUri:Landroid/net/Uri;
    .end local v16           #dataUri:Landroid/net/Uri;
    .end local v17           #groupsUri:Landroid/net/Uri;
    .end local v20           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :catchall_0
    move-exception v2

    :try_start_a
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 778
    .end local v6           #selection:Ljava/lang/String;
    .end local v22           #iterator:Landroid/content/EntityIterator;
    :catch_1
    move-exception v20

    .line 780
    .local v20, e:Landroid/os/RemoteException;
    :try_start_b
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 782
    or-int v2, v18, p7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 766
    .end local v20           #e:Landroid/os/RemoteException;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #entity:Landroid/content/Entity;
    .restart local v15       #rawContactsUri:Landroid/net/Uri;
    .restart local v16       #dataUri:Landroid/net/Uri;
    .restart local v17       #groupsUri:Landroid/net/Uri;
    .restart local v22       #iterator:Landroid/content/EntityIterator;
    :catch_2
    move-exception v20

    .line 767
    .local v20, e:Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_3

    .line 768
    .end local v20           #e:Ljava/io/IOException;
    :catch_3
    move-exception v20

    .line 769
    .local v20, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto/16 :goto_3

    .line 770
    .end local v20           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :catch_4
    move-exception v20

    .line 771
    .local v20, e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    move-object/from16 v0, p4

    iget-wide v2, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p4

    iput-wide v2, v0, Landroid/content/SyncResult;->delayUntil:J

    .line 772
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 776
    .end local v9           #entity:Landroid/content/Entity;
    .end local v20           #e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    :cond_8
    :try_start_d
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    .line 782
    or-int v2, v18, p7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 782
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #rawContactsUri:Landroid/net/Uri;
    .end local v16           #dataUri:Landroid/net/Uri;
    .end local v17           #groupsUri:Landroid/net/Uri;
    .end local v22           #iterator:Landroid/content/EntityIterator;
    :catchall_1
    move-exception v2

    or-int v3, v18, p7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 783
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v2
.end method
