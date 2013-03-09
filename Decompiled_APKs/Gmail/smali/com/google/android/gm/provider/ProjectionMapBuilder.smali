.class Lcom/google/android/gm/provider/ProjectionMapBuilder;
.super Ljava/lang/Object;
.source "ProjectionMapBuilder.java"


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/ProjectionMapBuilder;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;
    .locals 1
    .parameter "identityColumn"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/provider/ProjectionMapBuilder;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;
    .locals 3
    .parameter "publicColumn"
    .parameter "dbColumn"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gm/provider/ProjectionMapBuilder;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object p0
.end method

.method public addIdentities([Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;
    .locals 4
    .parameter "identityEntries"

    .prologue
    .line 29
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 30
    .local v1, column:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->add(Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1           #column:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public addTransformations([[Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;
    .locals 10
    .parameter "entries"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 44
    move-object v0, p1

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 45
    .local v1, entry:[Ljava/lang/String;
    array-length v4, v1

    packed-switch v4, :pswitch_data_0

    .line 53
    const-string v4, "Gmail"

    const-string v5, "unrecognized projection map entry: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :pswitch_0
    aget-object v4, v1, v8

    aget-object v5, v1, v9

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    goto :goto_1

    .line 50
    :pswitch_1
    aget-object v4, v1, v8

    invoke-virtual {p0, v4}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->add(Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    goto :goto_1

    .line 58
    .end local v1           #entry:[Ljava/lang/String;
    :cond_0
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/provider/ProjectionMapBuilder;->mMap:Ljava/util/Map;

    return-object v0
.end method
