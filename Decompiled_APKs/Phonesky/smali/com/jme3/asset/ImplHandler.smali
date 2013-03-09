.class public Lcom/jme3/asset/ImplHandler;
.super Ljava/lang/Object;
.source "ImplHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final genericLocators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/asset/ImplHandler$ImplThreadLocal;",
            ">;"
        }
    .end annotation
.end field

.field private final loaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/asset/ImplHandler$ImplThreadLocal;",
            ">;"
        }
    .end annotation
.end field

.field private final owner:Lcom/jme3/asset/AssetManager;

.field private final parentAssetKey:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/jme3/asset/AssetKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/ImplHandler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/ImplHandler;->loaders:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/jme3/asset/ImplHandler;->owner:Lcom/jme3/asset/AssetManager;

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/jme3/asset/ImplHandler;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public varargs addLoader(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "extensions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, loaderType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;

    invoke-direct {v4, p0, p1}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;-><init>(Lcom/jme3/asset/ImplHandler;Ljava/lang/Class;)V

    .line 181
    .local v4, local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 182
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v6, p0, Lcom/jme3/asset/ImplHandler;->loaders:Ljava/util/HashMap;

    monitor-enter v6

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/jme3/asset/ImplHandler;->loaders:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    monitor-exit v6

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 187
    .end local v1           #extension:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addLocator(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "rootPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, locatorType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;-><init>(Lcom/jme3/asset/ImplHandler;Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    .local v0, local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    iget-object v2, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v2

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public aquireLoader(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetLoader;
    .locals 5
    .parameter "key"

    .prologue
    .line 169
    iget-object v3, p0, Lcom/jme3/asset/ImplHandler;->loaders:Ljava/util/HashMap;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/jme3/asset/ImplHandler;->loaders:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;

    .line 171
    .local v1, local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/AssetLoader;

    .line 173
    .local v0, loader:Lcom/jme3/asset/AssetLoader;
    monitor-exit v3

    .line 175
    .end local v0           #loader:Lcom/jme3/asset/AssetLoader;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 176
    .end local v1           #local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public establishParentKey(Lcom/jme3/asset/AssetKey;)V
    .locals 1
    .parameter "parentKey"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public getLocatorCount()I
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParentKey()Lcom/jme3/asset/AssetKey;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/AssetKey;

    return-object v0
.end method

.method public releaseParentKey(Lcom/jme3/asset/AssetKey;)V
    .locals 2
    .parameter "parentKey"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler;->parentAssetKey:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method public tryLocate(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v5, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    monitor-enter v5

    .line 141
    :try_start_0
    iget-object v6, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    monitor-exit v5

    move-object v1, v4

    .line 154
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v6, p0, Lcom/jme3/asset/ImplHandler;->genericLocators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;

    .line 145
    .local v2, local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    invoke-virtual {v2}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/asset/AssetLocator;

    .line 146
    .local v3, locator:Lcom/jme3/asset/AssetLocator;
    invoke-virtual {v2}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 147
    invoke-virtual {v2}, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/jme3/asset/AssetLocator;->setRootPath(Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object v6, p0, Lcom/jme3/asset/ImplHandler;->owner:Lcom/jme3/asset/AssetManager;

    invoke-interface {v3, v6, p1}, Lcom/jme3/asset/AssetLocator;->locate(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v1

    .line 150
    .local v1, info:Lcom/jme3/asset/AssetInfo;
    if-eqz v1, :cond_1

    .line 151
    monitor-exit v5

    goto :goto_0

    .line 153
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/jme3/asset/AssetInfo;
    .end local v2           #local:Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
    .end local v3           #locator:Lcom/jme3/asset/AssetLocator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 154
    goto :goto_0
.end method
