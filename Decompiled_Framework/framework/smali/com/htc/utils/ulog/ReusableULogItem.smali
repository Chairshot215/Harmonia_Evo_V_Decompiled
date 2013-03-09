.class final Lcom/htc/utils/ulog/ReusableULogItem;
.super Ljava/lang/Object;
.source "ReusableULogItem.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogData$ULogItem;


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReusableULogItem"

.field private static sLock:Ljava/lang/Object;

.field private static sPool:Lcom/htc/utils/ulog/ReusableULogItem;

.field private static sPoolSize:I


# instance fields
.field private mNext:Lcom/htc/utils/ulog/ReusableULogItem;

.field private final nameValuePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    return-void
.end method

.method public static obtain()Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 3

    sget-object v2, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    iget-object v1, v0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sput-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sget v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-direct {v0}, Lcom/htc/utils/ulog/ReusableULogItem;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 4

    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogItem;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    return-void
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/htc/utils/ulog/ReusableULogItem;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/htc/utils/ulog/ReusableULogItem;

    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogItem;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method put(Ljava/lang/String;Lcom/htc/utils/ulog/ReusableULogItem;)Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogItem;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogItem;->clear()V

    sget-object v1, Lcom/htc/utils/ulog/ReusableULogItem;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogItem;->mNext:Lcom/htc/utils/ulog/ReusableULogItem;

    sput-object p0, Lcom/htc/utils/ulog/ReusableULogItem;->sPool:Lcom/htc/utils/ulog/ReusableULogItem;

    sget v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/utils/ulog/ReusableULogItem;->sPoolSize:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/utils/ulog/ReusableULogItem;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
