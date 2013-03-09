.class public abstract Lcom/htc/opensense/provider/BaseContactDbWriter;
.super Ljava/lang/Object;
.source "BaseContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

.field private static final DEBUG:Z = false

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_RESULT"

.field private static final INTENT_BASENAME:Ljava/lang/String; = "com.htc.opensense.provider.intent."

.field private static final LOG_NUM_APPLY_BATCH_RESULTS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "BaseContactDbWriter"

.field protected static final MAX_CALENDAR_OPS_PER_BATCH:I = 0x5

.field protected static final MAX_HASH_OPS_PER_BATCH:I = 0x5

.field protected static final MAX_RAWCONTACT_OPS_PER_BATCH:I = 0x5

.field protected static final PROFILE_DATA3:Ljava/lang/String; = "View profile"

.field public static final TABLE_EVENTS:Ljava/lang/String; = "Events"

.field protected static final sBirthDate:Ljava/text/SimpleDateFormat;

.field protected static final sBirthDateWithYear:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mAccountName:Ljava/lang/String;

.field protected mAccountType:Ljava/lang/String;

.field protected mAccountTypeName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSyncCalendarEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->sBirthDateWithYear:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->sBirthDate:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    return-void
.end method

.method static appendCallerIsSyncAdapterForContact(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed and results is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static final applyBatchStatusUpdates(Landroid/content/ContentResolver;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "presence_data_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const-string v5, "com.android.contacts"

    invoke-static {p0, v5, v3, p2}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    :cond_1
    return-void
.end method

.method private static final applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Landroid/content/ContentProviderResult;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz p1, :cond_2

    array-length v6, p1

    if-lez v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation$Builder;

    array-length v6, p1

    if-ge v0, v6, :cond_0

    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v6, "presence_data_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    const-string v6, "com.android.contacts"

    invoke-static {p0, v6, v4, p3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    :cond_2
    return-void
.end method

.method protected static final getNewInsert(ZILandroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected final addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/socialnetwork/User;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;I)I

    move-result v0

    return v0
.end method

.method protected abstract addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/socialnetwork/User;",
            "I)I"
        }
    .end annotation
.end method

.method protected abstract addEventOps(Ljava/util/ArrayList;ILcom/htc/socialnetwork/User;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/htc/socialnetwork/User;",
            ")V"
        }
    .end annotation
.end method

.method public addOrUpdateContacts(Ljava/util/List;)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    const-string v5, "BaseContactDbWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateContacts "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/socialnetwork/User;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->prepareCalendar()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "sourceid"

    aput-object v8, v6, v7

    const-string v7, "account_type"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_6

    :cond_4
    :goto_3
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    :try_start_1
    const-string v4, "sourceid"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-direct {v4, v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v20

    :try_start_2
    const-string v4, "BaseContactDbWriter"

    const-string v5, "addOrUpdateContacts can\'t fetch a raw contact!"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->PROJECTIONS:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_9

    :cond_7
    :goto_4
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    if-eqz v4, :cond_8

    :try_start_4
    const-string v4, "user_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    const-string v4, "user_hash"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/socialnetwork/User;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getHashFromUser(Lcom/htc/socialnetwork/User;)I

    move-result v33

    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, v33

    if-eq v0, v4, :cond_7

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    move/from16 v0, v33

    move-object/from16 v1, v35

    iput v0, v1, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v20

    :try_start_5
    const-string v4, "BaseContactDbWriter"

    const-string v5, "addOrUpdateContacts failed to hash!"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    :cond_a
    const/16 v24, 0x0

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/htc/socialnetwork/User;

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    const-string v4, "BaseContactDbWriter"

    const-string v5, "%d %s: delete data"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getDeleteColumns()[Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_b

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    :cond_b
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v40, v4

    move-object/from16 v0, v19

    array-length v4, v0

    if-lez v4, :cond_e

    const-string v4, " AND ("

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v29, v4, -0x1

    :goto_6
    if-ltz v29, :cond_d

    add-int/lit8 v4, v29, 0x1

    aget-object v5, v19, v29

    aput-object v5, v40, v4

    const-string v4, "mimetype"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v29, :cond_c

    const-string v4, " OR "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v29, v29, -0x1

    goto :goto_6

    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    :catchall_1
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_d
    const-string v4, ")"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;I)I

    move-result v14

    if-ltz v14, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v41

    if-eqz v41, :cond_f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "_sync_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LIKE \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "-birthday\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v46, v0

    aput-object v46, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_11

    :goto_7
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v4

    if-eqz v4, :cond_10

    :try_start_7
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v4

    goto :goto_7

    :catchall_2
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    :catch_5
    move-exception v4

    :cond_10
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/socialnetwork/User;)V

    :cond_12
    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1, v5}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.calendar"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    :cond_13
    :goto_9
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    :cond_14
    new-instance v33, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    const/4 v4, 0x2

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getHashFromUser(Lcom/htc/socialnetwork/User;)I

    move-result v6

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;-><init>(ILjava/lang/String;I)V

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_type"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_name"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sourceid"

    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "aggregation_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync1"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync3"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync4"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;)I

    move-result v14

    if-ltz v14, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v41

    if-eqz v41, :cond_15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/socialnetwork/User;)V

    goto/16 :goto_8

    :cond_16
    if-lez v24, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getMaxContactBatchPerRawContactBatch()I

    move-result v4

    rem-int v4, v24, v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1, v5}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_13

    if-lez v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getMaxContactBatchPerCalendarBatch()I

    move-result v4

    rem-int v4, v24, v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.calendar"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const/4 v11, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v11

    :goto_a
    const/16 v31, 0x1

    if-eqz v11, :cond_1a

    move-object v13, v11

    array-length v0, v13

    move/from16 v30, v0

    const/16 v25, 0x0

    :goto_b
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a

    aget-object v10, v13, v25

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v31, 0x0

    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    :catch_6
    move-exception v20

    const-string v4, "BaseContactDbWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No accounts found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_1a
    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/htc/opensense/provider/BaseContactDbWriter;->appendCallerIsSyncAdapterForContact(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "account_type=? AND account_name=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "account_type=? AND account_name=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public deleteContacts(Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "BaseContactDbWriter"

    const-string v2, "deleteContacts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sourceid"

    aput-object v5, v3, v4

    const-string v4, "account_type"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "sourceid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_1
    move-exception v1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v1, "BaseContactDbWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contacts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "sourceid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v13, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v13, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;-><init>(ILjava/lang/String;I)V

    invoke-interface {v10, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez v11, :cond_4

    rem-int/lit8 v1, v11, 0x5

    if-nez v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    const/4 v3, 0x1

    invoke-static {v1, v2, v9, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method

.method protected abstract getDeleteColumns()[Ljava/lang/String;
.end method

.method protected abstract getHashFromUser(Lcom/htc/socialnetwork/User;)I
.end method

.method protected getMaxContactBatchPerCalendarBatch()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxContactBatchPerRawContactBatch()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getProfileData2Value()Ljava/lang/String;
.end method

.method protected getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareCalendar()I
    .locals 12

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v9, v4, v11

    iget-object v9, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v9, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_type"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_name"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "calendar_displayName"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountTypeName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_events"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "calendar_color"

    const v1, -0xd6ad86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "calendar_access_level"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "calendar_timezone"

    const-string v1, "UTC"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_source"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "displayOrder"

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public sendFinishBroadcast(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    iget-object v4, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public abstract syncEvents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public updateStatusUpdates(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/socialnetwork/User;

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getProfileData2Value()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "account_type"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "data2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-lez v10, :cond_4

    const-string v2, " OR "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v2, "sourceid"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    add-int/lit8 v2, v10, 0x3

    aput-object v17, v6, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "sourceid"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "_id"

    aput-object v7, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "sourceid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/socialnetwork/User;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    if-lez v10, :cond_a

    rem-int/lit8 v2, v10, 0x5

    if-nez v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;Ljava/util/Map;Z)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public updateUserHashes(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    const/4 v3, 0x0

    :try_start_0
    iget v6, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v6, :pswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v1, :cond_1

    rem-int/lit8 v6, v1, 0x5

    if-eqz v6, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "com.htc.socialnetwork.snprovider"

    invoke-static {v6, v7, v4, v11}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    :try_start_1
    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "account_type"

    iget-object v8, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "account_name"

    iget-object v8, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_id"

    iget-object v8, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_hash"

    iget v8, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_hash"

    iget v8, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_2
    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
