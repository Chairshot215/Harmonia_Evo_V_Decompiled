.class public Lcom/google/android/finsky/widget/WidgetTypeMap;
.super Ljava/lang/Object;
.source "WidgetTypeMap.java"


# static fields
.field private static sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;


# instance fields
.field private final mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "widgets"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/widget/WidgetTypeMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V
    .locals 1
    .parameter "backingStore"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->forceSynchronousLoad()V

    .line 49
    return-void
.end method

.method private static buildKey(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/google/android/finsky/widget/WidgetTypeMap;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/widget/WidgetTypeMap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-object v0
.end method

.method private getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I
    .locals 11
    .parameter
    .parameter "type"
    .parameter "considerAllAffectedWidgets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, appWidgetIdStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, desiredCls:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v10}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v3

    .line 115
    .local v3, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 116
    .local v5, entryValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "type"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 117
    .local v9, storedType:Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz p3, :cond_0

    const-string v10, "all"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 119
    :cond_1
    const-string v10, "widgetProvider"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 120
    .local v8, storedCls:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 121
    const-string v10, "appWidgetId"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v5           #entryValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #storedCls:Ljava/lang/String;
    .end local v9           #storedType:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    .local v0, N:I
    new-array v2, v0, [I

    .line 128
    .local v2, appWidgetIds:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v0, :cond_3

    .line 129
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v2, v6

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 132
    :cond_3
    return-object v2
.end method


# virtual methods
.method public delete(Ljava/lang/Class;I)V
    .locals 2
    .parameter
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public get(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I
    .locals 1
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I
    .locals 1
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Class;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter "appWidgetId"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/BaseWidgetProvider;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "data cannot be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 63
    .local v0, currentData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 66
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 67
    .local v2, updatedData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "appWidgetId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "widgetProvider"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    return-void
.end method
