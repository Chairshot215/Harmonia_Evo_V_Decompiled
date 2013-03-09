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

    .prologue
    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->sBirthDateWithYear:Ljava/text/SimpleDateFormat;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->sBirthDate:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iput-object p2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    .line 88
    return-void
.end method

.method static appendCallerIsSyncAdapterForContact(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 863
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
    .parameter "resolver"
    .parameter "authority"
    .parameter
    .parameter "clearOps"
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

    .prologue
    .line 624
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 628
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 630
    .local v1, results:[Landroid/content/ContentProviderResult;
    if-eqz p3, :cond_0

    .line 631
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 633
    :cond_0
    if-eqz v1, :cond_1

    .line 660
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v1

    .line 650
    .restart local v1       #results:[Landroid/content/ContentProviderResult;
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

    .line 654
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
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

    .line 660
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 656
    :catch_1
    move-exception v0

    .line 657
    .local v0, e:Landroid/content/OperationApplicationException;
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
    .parameter "resolver"
    .parameter
    .parameter "clearOps"
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

    .prologue
    .line 430
    .local p1, ops:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v3, opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 433
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 434
    .local v4, profileDataId:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation$Builder;

    .line 435
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "presence_data_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v4           #profileDataId:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 440
    const-string v5, "com.android.contacts"

    invoke-static {p0, v5, v3, p2}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 442
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    return-void
.end method

.method private static final applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V
    .locals 7
    .parameter "resolver"
    .parameter "results"
    .parameter
    .parameter "clearOps"
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

    .prologue
    .line 409
    .local p2, ops:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz p1, :cond_2

    array-length v6, p1

    if-lez v6, :cond_2

    .line 411
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v4, opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 414
    .local v0, backRefIndex:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation$Builder;

    .line 415
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    array-length v6, p1

    if-ge v0, v6, :cond_0

    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 417
    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, profileId:Ljava/lang/String;
    const-string v6, "presence_data_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    .end local v0           #backRefIndex:I
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v5           #profileId:Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 424
    const-string v6, "com.android.contacts"

    invoke-static {p0, v6, v4, p3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 426
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    return-void
.end method

.method protected static final getNewInsert(ZILandroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "useBackReference"
    .parameter "indexId"
    .parameter "uri"
    .parameter "key"

    .prologue
    .line 695
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 696
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 699
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
    .parameter
    .parameter "user"
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

    .prologue
    .line 665
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
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
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, friends:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/User;>;"
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

    .line 155
    if-nez p1, :cond_2

    .line 404
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 158
    :cond_2
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v15, buffer:Ljava/lang/StringBuffer;
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v32, newContacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/socialnetwork/User;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/socialnetwork/User;

    .line 161
    .local v22, friend:Lcom/htc/socialnetwork/User;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 163
    .end local v22           #friend:Lcom/htc/socialnetwork/User;
    :cond_3
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v36, rawContacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v34, newHashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v18, dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v21, eventOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v42, statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->prepareCalendar()I

    move-result v17

    .line 171
    .local v17, calId:I
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

    .line 178
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_6

    .line 180
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    :try_start_1
    const-string v4, "sourceid"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 183
    .local v43, uid:Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 184
    .local v37, rawId:I
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
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

    .line 187
    .end local v37           #rawId:I
    .end local v43           #uid:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 188
    .local v20, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BaseContactDbWriter"

    const-string v5, "addOrUpdateContacts can\'t fetch a raw contact!"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 192
    .end local v20           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 195
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_6
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 199
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

    .line 207
    if-eqz v16, :cond_9

    .line 209
    :cond_7
    :goto_4
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    if-eqz v4, :cond_8

    .line 211
    :try_start_4
    const-string v4, "user_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 212
    .restart local v43       #uid:Ljava/lang/String;
    const-string v4, "user_hash"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 213
    .local v23, hash:I
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 214
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/socialnetwork/User;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getHashFromUser(Lcom/htc/socialnetwork/User;)I

    move-result v33

    .line 215
    .local v33, newHash:I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, v33

    if-eq v0, v4, :cond_7

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 221
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    .line 222
    .local v35, rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    move/from16 v0, v33

    move-object/from16 v1, v35

    iput v0, v1, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 226
    .end local v23           #hash:I
    .end local v33           #newHash:I
    .end local v35           #rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    .end local v43           #uid:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 227
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "BaseContactDbWriter"

    const-string v5, "addOrUpdateContacts failed to hash!"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 231
    .end local v20           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 234
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    .line 240
    :cond_a
    const/16 v24, 0x0

    .line 241
    .local v24, i:I
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 242
    .local v28, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/User;>;"
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 243
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/htc/socialnetwork/User;

    .line 244
    .local v45, user:Lcom/htc/socialnetwork/User;
    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 245
    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    .line 246
    .restart local v35       #rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    .line 248
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

    .line 250
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

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getDeleteColumns()[Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, delCols:[Ljava/lang/String;
    if-nez v19, :cond_b

    .line 255
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 257
    :cond_b
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 258
    .local v40, selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v40, v4

    .line 259
    move-object/from16 v0, v19

    array-length v4, v0

    if-lez v4, :cond_e

    .line 260
    const-string v4, " AND ("

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v29, v4, -0x1

    .local v29, j:I
    :goto_6
    if-ltz v29, :cond_d

    .line 262
    add-int/lit8 v4, v29, 0x1

    aget-object v5, v19, v29

    aput-object v5, v40, v4

    .line 263
    const-string v4, "mimetype"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    if-eqz v29, :cond_c

    .line 266
    const-string v4, " OR "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_c
    add-int/lit8 v29, v29, -0x1

    goto :goto_6

    .line 195
    .end local v19           #delCols:[Ljava/lang/String;
    .end local v24           #i:I
    .end local v28           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/User;>;"
    .end local v29           #j:I
    .end local v35           #rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    .end local v40           #selectionArgs:[Ljava/lang/String;
    .end local v45           #user:Lcom/htc/socialnetwork/User;
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 234
    :catchall_1
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 269
    .restart local v19       #delCols:[Ljava/lang/String;
    .restart local v24       #i:I
    .restart local v28       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/User;>;"
    .restart local v29       #j:I
    .restart local v35       #rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    .restart local v40       #selectionArgs:[Ljava/lang/String;
    .restart local v45       #user:Lcom/htc/socialnetwork/User;
    :cond_d
    const-string v4, ")"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    .end local v29           #j:I
    :cond_e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    .line 272
    .local v39, selection:Ljava/lang/String;
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

    .line 276
    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;I)I

    move-result v14

    .line 278
    .local v14, backRefIndex:I
    if-ltz v14, :cond_f

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v41

    .line 280
    .local v41, statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v41, :cond_f

    .line 281
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v41           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_12

    .line 285
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

    .line 298
    if-eqz v16, :cond_11

    .line 300
    :goto_7
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v4

    if-eqz v4, :cond_10

    .line 302
    :try_start_7
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 303
    .local v26, id:J
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    .line 305
    .local v44, uri:Landroid/net/Uri;
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

    .line 308
    .end local v26           #id:J
    .end local v44           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v4

    goto :goto_7

    .line 315
    :catchall_2
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 312
    :catch_5
    move-exception v4

    .line 315
    :cond_10
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/socialnetwork/User;)V

    .line 353
    .end local v14           #backRefIndex:I
    .end local v19           #delCols:[Ljava/lang/String;
    .end local v35           #rawContact:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    .end local v39           #selection:Ljava/lang/String;
    .end local v40           #selectionArgs:[Ljava/lang/String;
    :cond_12
    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v38

    .line 356
    .local v38, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1, v5}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    .line 358
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_13

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.calendar"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 242
    .end local v38           #results:[Landroid/content/ContentProviderResult;
    :cond_13
    :goto_9
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 322
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

    .line 326
    .local v33, newHash:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    invoke-virtual/range {v45 .. v45}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
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

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/socialnetwork/User;)I

    move-result v14

    .line 344
    .restart local v14       #backRefIndex:I
    if-ltz v14, :cond_15

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v41

    .line 346
    .restart local v41       #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v41, :cond_15

    .line 347
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v41           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/socialnetwork/User;)V

    goto/16 :goto_8

    .line 362
    .end local v14           #backRefIndex:I
    .end local v33           #newHash:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    :cond_16
    if-lez v24, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getMaxContactBatchPerRawContactBatch()I

    move-result v4

    rem-int v4, v24, v4

    if-nez v4, :cond_17

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v38

    .line 365
    .restart local v38       #results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1, v5}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    goto/16 :goto_9

    .line 367
    .end local v38           #results:[Landroid/content/ContentProviderResult;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v4, :cond_13

    if-lez v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getMaxContactBatchPerCalendarBatch()I

    move-result v4

    rem-int v4, v24, v4

    if-nez v4, :cond_13

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.calendar"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0, v6}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto/16 :goto_9

    .line 375
    .end local v45           #user:Lcom/htc/socialnetwork/User;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    .line 377
    .local v12, am:Landroid/accounts/AccountManager;
    const/4 v11, 0x0

    .line 379
    .local v11, accounts:[Landroid/accounts/Account;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v11

    .line 384
    :goto_a
    const/16 v31, 0x1

    .line 385
    .local v31, logout:Z
    if-eqz v11, :cond_1a

    .line 386
    move-object v13, v11

    .local v13, arr$:[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a

    aget-object v10, v13, v25

    .line 387
    .local v10, account:Landroid/accounts/Account;
    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 390
    const/16 v31, 0x0

    .line 386
    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 380
    .end local v10           #account:Landroid/accounts/Account;
    .end local v13           #arr$:[Landroid/accounts/Account;
    .end local v30           #len$:I
    .end local v31           #logout:Z
    .local v25, i$:Ljava/util/Iterator;
    :catch_6
    move-exception v20

    .line 381
    .restart local v20       #e:Ljava/lang/Exception;
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

    .line 394
    .end local v20           #e:Ljava/lang/Exception;
    .end local v25           #i$:Ljava/util/Iterator;
    .restart local v31       #logout:Z
    :cond_1a
    if-eqz v31, :cond_0

    .line 397
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

    .line 400
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
    .parameter "uri"

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 853
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 854
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 856
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 859
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public deleteContacts(Ljava/util/Set;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, newUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "BaseContactDbWriter"

    const-string v2, "deleteContacts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 458
    .local v7, buffer:Ljava/lang/StringBuffer;
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

    .line 465
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 471
    .local v14, uidsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 473
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

    .line 474
    :catch_0
    move-exception v1

    goto :goto_1

    .line 481
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 478
    :catch_1
    move-exception v1

    .line 481
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 483
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 484
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

    .line 486
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 494
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 498
    .local v15, uri:Landroid/net/Uri;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v9, dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v10, hashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    const/4 v11, 0x0

    .line 501
    .local v11, i:I
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 502
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 503
    .local v13, uidToDelete:Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 504
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

    .line 515
    new-instance v1, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v13, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;-><init>(ILjava/lang/String;I)V

    invoke-interface {v10, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez v11, :cond_4

    rem-int/lit8 v1, v11, 0x5

    if-nez v1, :cond_4

    .line 522
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    const/4 v3, 0x1

    invoke-static {v1, v2, v9, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 501
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 528
    .end local v13           #uidToDelete:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/opensense/provider/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    .line 529
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method

.method protected abstract getDeleteColumns()[Ljava/lang/String;
.end method

.method protected abstract getHashFromUser(Lcom/htc/socialnetwork/User;)I
.end method

.method protected getMaxContactBatchPerCalendarBatch()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxContactBatchPerRawContactBatch()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getProfileData2Value()Ljava/lang/String;
.end method

.method protected getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "user"

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareCalendar()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 99
    const/4 v7, -0x1

    .line 100
    .local v7, calId:I
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

    .line 104
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 106
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    .line 117
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
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

    .line 150
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return v7

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 127
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v0, "calendar_displayName"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountTypeName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "ownerAccount"

    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "sync_events"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v0, "calendar_color"

    const v1, -0xd6ad86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "calendar_access_level"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v0, "calendar_timezone"

    const-string v1, "UTC"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "sync_source"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v0, "displayOrder"

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
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

    .line 145
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 123
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 109
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public sendFinishBroadcast(Z)V
    .locals 5
    .parameter "result"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    iget-object v4, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
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
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/User;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 782
    :cond_0
    return-void

    .line 708
    :cond_1
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v20, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/socialnetwork/User;

    .line 710
    .local v21, user:Lcom/htc/socialnetwork/User;
    if-eqz v21, :cond_2

    .line 711
    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 715
    .end local v21           #user:Lcom/htc/socialnetwork/User;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 719
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .line 720
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 721
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 722
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getProfileData2Value()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 723
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v15, selection:Ljava/lang/StringBuffer;
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

    .line 730
    const/4 v10, 0x0

    .line 731
    .local v10, i:I
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    if-lez v10, :cond_4

    .line 733
    const-string v2, " OR "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    :cond_4
    const-string v2, "sourceid"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 738
    .local v17, source_id:Ljava/lang/String;
    add-int/lit8 v2, v10, 0x3

    aput-object v17, v6, v2

    .line 731
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 740
    .end local v17           #source_id:Ljava/lang/String;
    :cond_5
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v12, idMaps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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

    .line 746
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_7

    .line 748
    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 749
    const-string v2, "sourceid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 750
    .local v16, sourceId:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, dataId:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 753
    .end local v9           #dataId:Ljava/lang/String;
    .end local v16           #sourceId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 756
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_7
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 764
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 765
    .local v19, statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    const/4 v10, 0x0

    .line 766
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/User;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/socialnetwork/User;

    .line 768
    .restart local v21       #user:Lcom/htc/socialnetwork/User;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/socialnetwork/User;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 770
    .local v18, statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v18, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 771
    invoke-virtual/range {v21 .. v21}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 772
    .restart local v9       #dataId:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .end local v9           #dataId:Ljava/lang/String;
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    if-lez v10, :cond_a

    rem-int/lit8 v2, v10, 0x5

    if-nez v2, :cond_a

    .line 777
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;Ljava/util/Map;Z)V

    .line 766
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 756
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/User;>;"
    .end local v18           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v19           #statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v21           #user:Lcom/htc/socialnetwork/User;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public updateUserHashes(Ljava/util/Map;)V
    .locals 12
    .parameter
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

    .prologue
    .local p1, userhashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    const/4 v11, 0x1

    .line 542
    iget-object v6, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 543
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 546
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 547
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;

    .line 549
    .local v5, userhash:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    const/4 v3, 0x0

    .line 551
    .local v3, op:Landroid/content/ContentProviderOperation;
    :try_start_0
    iget v6, v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v6, :pswitch_data_0

    .line 605
    :goto_1
    if-eqz v3, :cond_0

    .line 606
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    if-lez v1, :cond_1

    rem-int/lit8 v6, v1, 0x5

    if-eqz v6, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 611
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/provider/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "com.htc.socialnetwork.snprovider"

    invoke-static {v6, v7, v4, v11}, Lcom/htc/opensense/provider/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 547
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
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

    .line 560
    goto :goto_1

    .line 563
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

    .line 578
    goto/16 :goto_1

    .line 581
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

    .line 595
    goto/16 :goto_1

    .line 617
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    .end local v3           #op:Landroid/content/ContentProviderOperation;
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5           #userhash:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    :cond_4
    return-void

    .line 602
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #i:I
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;>;"
    .restart local v3       #op:Landroid/content/ContentProviderOperation;
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5       #userhash:Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
