.class public Lcom/htc/android/mail/eassvc/util/SyncTrackManager;
.super Ljava/lang/Object;
.source "SyncTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;,
        Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final ADD_COLUMN_NAME:Ljava/lang/String; = "_add"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DELETE_COLUMN_NAME:Ljava/lang/String; = "_delete"

.field public static final ID_COLUMN_NAME:Ljava/lang/String; = "_id"

.field public static final IN_SYNC_COLUMN_NAME:Ljava/lang/String; = "_syncing"

.field public static final SERVER_ID_COLUMN_NAME:Ljava/lang/String; = "serverId"

.field public static final UPDATE_COLUMN_NAME:Ljava/lang/String; = "_modify"


# instance fields
.field private final EXP_ACCOUNT_IS:Ljava/lang/String;

.field private final EXP_ADDED_TO_SERVER:Ljava/lang/String;

.field private final EXP_AND_ACCOUNT_IS:Ljava/lang/String;

.field private final EXP_DELETED:Ljava/lang/String;

.field private final EXP_ITEM_CHANGED:Ljava/lang/String;

.field private final EXP_SYNC_FAILED:Ljava/lang/String;

.field private final EXP_SYNC_SUCCESS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field private mContext:Landroid/content/Context;

.field private mTrackingUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 2
    .parameter "context"
    .parameter "contentUri"
    .parameter "account"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "EAS_Tracker"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "_delete=1"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_DELETED:Ljava/lang/String;

    .line 52
    const-string v0, "_syncing=1"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_SYNC_FAILED:Ljava/lang/String;

    .line 53
    const-string v0, "_syncing=0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_SYNC_SUCCESS:Ljava/lang/String;

    .line 54
    const-string v0, "(_add=1 OR _delete=1 OR _modify=1)"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ITEM_CHANGED:Ljava/lang/String;

    .line 57
    const-string v0, "_add= 0 OR _syncing=1"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ADDED_TO_SERVER:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    .line 70
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private addServerID(Ljava/util/ArrayList;Ljava/util/Hashtable;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p2, serveridMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 184
    .local v0, contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    goto :goto_0

    .line 187
    .end local v0           #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    :cond_0
    return-void
.end method

.method private getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "clientId"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 429
    const/4 v7, 0x0

    .line 430
    .local v7, serverId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "serverId"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "serverId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 442
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_1
    return-object v7

    .line 442
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_2
    throw v0
.end method

.method private isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z
    .locals 6
    .parameter
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 452
    :cond_0
    const-string v3, "EAS_Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExisted(): event should not be null, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    .line 464
    :cond_1
    :goto_0
    return v1

    .line 455
    :cond_2
    const/4 v1, 0x0

    .line 456
    .local v1, find:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 457
    .local v0, evt:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 458
    const-string v3, "EAS_Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExisted():#2 event should not be null, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_4
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 460
    const/4 v1, 0x1

    .line 461
    goto :goto_0
.end method

.method private removeEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z
    .locals 4
    .parameter
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 468
    .local v0, evt:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 471
    const/4 v2, 0x1

    .line 474
    .end local v0           #evt:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 179
    :cond_1
    return-object v1

    .line 175
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 176
    .local v1, ret:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 177
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cleanSyncFailRecord()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_syncing=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    .local v6, curTracking:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 318
    .local v9, ret:Ljava/lang/String;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 321
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, previousId:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 324
    move-object v9, v8

    .line 319
    :goto_1
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    .end local v7           #i:I
    .end local v8           #previousId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_0
    throw v0

    .line 326
    .restart local v7       #i:I
    .restart local v8       #previousId:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 330
    .end local v7           #i:I
    .end local v8           #previousId:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_syncing=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    return-object v9
.end method

.method public cleanTrackStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 301
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_delete=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_syncing"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v1, "_add"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v1, "_modify"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public findExistedItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "SvrIDList"
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
    const/4 v4, 0x0

    .line 495
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v7, existedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "serverId"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 499
    .local v6, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    const-string v0, "serverId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, serverId:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 506
    .end local v8           #serverId:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move-object v7, v4

    .line 512
    .end local v7           #existedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v7

    .line 506
    .restart local v7       #existedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_5
    throw v0
.end method

.method public getDeviceContactChangeList(Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 21
    .parameter "populate"
    .parameter
    .parameter
    .parameter
    .parameter "conversationError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p3, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p4, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v9, addPersonIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v19, updPersonIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/Hashtable;

    invoke-direct/range {v18 .. v18}, Ljava/util/Hashtable;-><init>()V

    .line 106
    .local v18, serveridMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v3, "25"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 107
    .local v15, getChangeSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_syncing=0 AND (_add=1 OR _delete=1 OR _modify=1)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id LIMIT "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 115
    .local v11, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EAS_Tracker"

    const-string v4, "getContactChangeList(): nothing changed"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_1
    return-void

    .line 119
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "EAS_Tracker"

    const-string v4, "getContactChangeList(): has local changes"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 123
    .local v16, id:I
    const-string v3, "serverId"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, serverId:Ljava/lang/String;
    const-string v3, "_delete"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v13, 0x1

    .line 127
    .local v13, flagDelete:Z
    :goto_1
    const-string v3, "_add"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v12, 0x1

    .line 129
    .local v12, flagAdd:Z
    :goto_2
    const-string v3, "_modify"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    const/4 v14, 0x1

    .line 132
    .local v14, flagUpdate:Z
    :goto_3
    if-eqz v13, :cond_a

    .line 133
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 134
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_4
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;->populate([I)Ljava/util/ArrayList;

    move-result-object v10

    .line 146
    .local v10, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    if-eqz v10, :cond_5

    .line 147
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 148
    if-nez p5, :cond_d

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;->populate([I)Ljava/util/ArrayList;

    move-result-object v10

    .line 156
    if-eqz v10, :cond_6

    .line 157
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 158
    if-nez p5, :cond_e

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->addServerID(Ljava/util/ArrayList;Ljava/util/Hashtable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 125
    .end local v10           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .end local v12           #flagAdd:Z
    .end local v13           #flagDelete:Z
    .end local v14           #flagUpdate:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 127
    .restart local v13       #flagDelete:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 129
    .restart local v12       #flagAdd:Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    .line 136
    .restart local v14       #flagUpdate:Z
    :cond_a
    if-eqz v14, :cond_c

    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 137
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 167
    .end local v12           #flagAdd:Z
    .end local v13           #flagDelete:Z
    .end local v14           #flagUpdate:Z
    .end local v16           #id:I
    .end local v17           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_b

    .line 168
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_b
    throw v3

    .line 140
    .restart local v12       #flagAdd:Z
    .restart local v13       #flagDelete:Z
    .restart local v14       #flagUpdate:Z
    .restart local v16       #id:I
    .restart local v17       #serverId:Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_4

    .line 141
    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 150
    .restart local v10       #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 160
    :cond_e
    :try_start_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method

.method public getDeviceEventChangeList(Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "populate"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p3, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p4, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_syncing=0 AND (_add=1 OR _delete=1 OR _modify=1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .local v7, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EAS_Tracker"

    const-string v2, "getDeviceEventChangeList(): nothing changed"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    if-eqz v7, :cond_1

    .line 424
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_1
    return-void

    .line 353
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "EAS_Tracker"

    const-string v2, "getDeviceEventChangeList(): has local changes"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_3
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 357
    .local v9, event_id:I
    const-string v1, "serverId"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 359
    .local v14, serverId:Ljava/lang/String;
    const-string v1, "_delete"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v11, 0x1

    .line 361
    .local v11, flagDelete:Z
    :goto_1
    const-string v1, "_add"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v10, 0x1

    .line 363
    .local v10, flagAdd:Z
    :goto_2
    const-string v1, "_modify"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v12, 0x1

    .line 366
    .local v12, flagUpdate:Z
    :goto_3
    if-eqz v11, :cond_9

    .line 367
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 368
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_4
    :goto_4
    if-nez v11, :cond_5

    if-eqz v10, :cond_5

    .line 398
    const/4 v13, 0x0

    .line 399
    .local v13, isChildEvent:Z
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;->populate(I)Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    move-result-object v8

    .line 403
    .local v8, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    if-eqz v8, :cond_10

    iget-object v1, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 405
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 406
    iget-object v1, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    .line 407
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v8           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v13           #isChildEvent:Z
    :cond_5
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    if-eqz v7, :cond_1

    goto/16 :goto_0

    .line 359
    .end local v10           #flagAdd:Z
    .end local v11           #flagDelete:Z
    .end local v12           #flagUpdate:Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 361
    .restart local v11       #flagDelete:Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 363
    .restart local v10       #flagAdd:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 370
    .restart local v12       #flagUpdate:Z
    :cond_9
    if-eqz v12, :cond_4

    .line 371
    const/4 v13, 0x0

    .line 372
    .restart local v13       #isChildEvent:Z
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;->populate(I)Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    move-result-object v8

    .line 373
    .restart local v8       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    if-nez v8, :cond_b

    .line 374
    const-string v1, "EAS_Tracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceEventChangeList(): error get event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 423
    .end local v8           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v9           #event_id:I
    .end local v10           #flagAdd:Z
    .end local v11           #flagDelete:Z
    .end local v12           #flagUpdate:Z
    .end local v13           #isChildEvent:Z
    .end local v14           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_a

    .line 424
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_a
    throw v1

    .line 380
    .restart local v8       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v9       #event_id:I
    .restart local v10       #flagAdd:Z
    .restart local v11       #flagDelete:Z
    .restart local v12       #flagUpdate:Z
    .restart local v13       #isChildEvent:Z
    .restart local v14       #serverId:Ljava/lang/String;
    :cond_b
    :try_start_2
    iget-object v1, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 381
    iget-object v1, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 382
    const/4 v13, 0x1

    .line 385
    :cond_c
    if-nez v13, :cond_d

    if-nez v10, :cond_f

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 387
    :cond_d
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 388
    iput-object v14, v8, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 393
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 410
    :cond_10
    if-eqz v8, :cond_5

    .line 411
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 412
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->removeEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    .line 414
    :cond_11
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->isExisted(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 415
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method public getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "SvrID"

    .prologue
    const/4 v4, 0x0

    .line 479
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 488
    .local v7, localId:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_0
    return-object v7

    .line 486
    .end local v7           #localId:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #localId:Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v7           #localId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_2
    throw v0
.end method

.method public getSyncedItemsIdList()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 518
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 519
    .local v8, ret:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 520
    .local v10, whereClause:Ljava/lang/String;
    const/4 v9, 0x0

    .line 521
    .local v9, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 524
    .local v6, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 527
    .local v7, id:I
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 528
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 529
    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 530
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 533
    .end local v7           #id:I
    :cond_2
    if-eqz v6, :cond_3

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 533
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_4
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 77
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_delete=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "serverId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "_syncing"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v1, "_add"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "_modify"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public updateRecord(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "clientID"
    .parameter "svrID"
    .parameter "deleted"

    .prologue
    const/4 v4, 0x1

    .line 242
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 243
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 244
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_syncing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    if-eqz p2, :cond_0

    .line 248
    const-string v2, "serverId"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    if-eqz p3, :cond_1

    .line 250
    const-string v2, "_delete"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public updateRecord(Ljava/util/ArrayList;Z)V
    .locals 16
    .parameter
    .parameter "deleted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v6, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 260
    .local v2, clientID:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v7, v9, v10

    .line 261
    .local v7, svrID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 262
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 263
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 265
    .local v5, op:Landroid/content/ContentProviderOperation$Builder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v8, values:Landroid/content/ContentValues;
    if-eqz v7, :cond_0

    .line 269
    const-string v9, "serverId"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    if-eqz p2, :cond_1

    .line 271
    const-string v9, "_delete"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v9, "_syncing"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    :cond_1
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 275
    invoke-virtual {v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 276
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 277
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v2           #clientID:Ljava/lang/String;
    .end local v5           #op:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #svrID:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    sget-object v10, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.calendar"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Contacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_5
    return-void

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "EAS_Tracker"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s: %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 291
    new-instance v9, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v10, 0x320

    const-string v11, "update tracking fail"

    invoke-direct {v9, v10, v11}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v9
.end method

.method public updateRecord_withoutSetSyncingFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "clientID"
    .parameter "svrID"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 192
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 196
    const-string v2, "serverId"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "_add"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "_modify"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public updateRecord_withoutSetSyncingFlag(Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v6, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 209
    .local v2, clientID:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v7, v9, v10

    .line 210
    .local v7, svrID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 211
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 213
    .local v5, op:Landroid/content/ContentProviderOperation$Builder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v8, values:Landroid/content/ContentValues;
    if-eqz v7, :cond_0

    .line 216
    const-string v9, "serverId"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v9, "_add"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v9, "_modify"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-virtual {v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 222
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->EXP_ACCOUNT_IS:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 223
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v2           #clientID:Ljava/lang/String;
    .end local v5           #op:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #svrID:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    sget-object v10, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 227
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.calendar"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 230
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mTrackingUri:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Contacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 231
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_3
    return-void

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "EAS_Tracker"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s: %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 235
    new-instance v9, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v10, 0x320

    const-string v11, "add contact fail"

    invoke-direct {v9, v10, v11}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v9
.end method
