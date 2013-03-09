.class public Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
.super Ljava/util/Observable;
.source "OnlineResourceList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appCtx:Landroid/content/Context;

.field private final category:Ljava/lang/String;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/onlineresource/OnlineResource;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/home/personalize/onlineresource/OnlineResource;",
            ">;"
        }
    .end annotation
.end field

.field private next:I

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "context"
    .parameter "cate"
    .parameter "isLocalList"
    .parameter "type"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->map:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->next:I

    .line 37
    new-instance v0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;-><init>(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->receiver:Landroid/content/BroadcastReceiver;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    .line 175
    iput p4, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized discard(Lcom/htc/home/personalize/onlineresource/OnlineResource;)V
    .locals 3
    .parameter "or"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getOnlineResourceByGuid(Ljava/lang/String;ILandroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .locals 5
    .parameter "guid"
    .parameter "type"
    .parameter "ctx"

    .prologue
    .line 227
    sget-object v2, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnlineResourceList.getOnlineResourceByGuid: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " guid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p1, p0, p2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->query(ILjava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 231
    .local v1, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    sget-object v2, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    const-string v3, "OnlineResourceList.getOnlineResourceByGuid: got it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->import_(Landroid/database/Cursor;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;Landroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v1

    .line 236
    :cond_0
    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    const/4 v0, 0x0

    .line 241
    :cond_2
    sget-object v2, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    const-string v3, "OnlineResourceList.getOnlineResourceByGuid: done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-object v1
.end method

.method private static query(ILjava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 5
    .parameter "type"
    .parameter "guid"
    .parameter "ctx"

    .prologue
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewType = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toStringType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, where:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND productID = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {p2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v2

    const-class v3, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v2, v3, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Lcom/htc/home/personalize/onlineresource/OnlineResource;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V
    .locals 3
    .parameter "resource"
    .parameter "oldStatus"
    .parameter "action"
    .parameter "result"

    .prologue
    .line 166
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    .local v0, tmp:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->setChanged()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->notifyObservers(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public declared-synchronized get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .locals 6
    .parameter "i"

    .prologue
    .line 193
    monitor-enter p0

    const/4 v2, 0x0

    .line 195
    .local v2, ret:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :try_start_0
    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    monitor-exit p0

    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    sget-object v4, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get: IndexOutOfBoundsException i="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " list.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 197
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method public declared-synchronized getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .locals 1
    .parameter "guid"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNextCode()I
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->next:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I

    return v0
.end method

.method public declared-synchronized hasMorePages()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 217
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->next:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized indexOfGuid(Ljava/lang/String;)I
    .locals 3
    .parameter "guid"

    .prologue
    .line 204
    monitor-enter p0

    const/4 v1, -0x1

    .line 205
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    .line 206
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 209
    :cond_0
    monitor-exit p0

    return v1

    .line 204
    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_RES_STATUSCHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, iFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public reload()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v3, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/onlineresource/OnlineResource;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewType = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I

    invoke-static {v6}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toStringType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, where:Ljava/lang/String;
    const-string v5, "all_category"

    iget-object v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    if-eq v5, v6, :cond_0

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND cateID = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    :cond_0
    sget-object v5, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadOnline: where="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    const-class v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v5, v6, v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    sget-object v5, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadOnline: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v0, p0, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->import_(Landroid/database/Cursor;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;Landroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v2

    .line 107
    .local v2, or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    .end local v2           #or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_3
    if-eqz v0, :cond_5

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_4
    const/4 v0, 0x0

    .line 118
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    .line 119
    .restart local v2       #or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->discard(Lcom/htc/home/personalize/onlineresource/OnlineResource;)V

    goto :goto_0

    .line 123
    .end local v2           #or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewType = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I

    invoke-static {v6}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toStringType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    const-string v5, "all_category"

    iget-object v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    if-eq v5, v6, :cond_7

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_7
    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    const-class v6, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {v5, v6, v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    const-string v5, "hasNext"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->next:I

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    sget-object v5, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadOnline: next="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->next:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    if-eqz v0, :cond_9

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_8
    const/4 v0, 0x0

    .line 143
    :cond_9
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {p0, v8, v8, v5, v6}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    .line 144
    return-void

    .line 132
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 135
    :cond_a
    sget-object v5, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->TAG:Ljava/lang/String;

    const-string v6, "can not find corresponding type item"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
