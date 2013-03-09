.class public Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;
.super Ljava/lang/Object;
.source "FxScreenItemManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final localLOGD:Z


# instance fields
.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->LOG_TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->localLOGD:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public add(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V
    .locals 3
    .parameter "id"
    .parameter "item"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .locals 5
    .parameter "id"

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    monitor-enter v3

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-object v1, v0

    .line 44
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-nez v1, :cond_0

    .line 47
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-object v1

    .line 44
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Long;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item not removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
