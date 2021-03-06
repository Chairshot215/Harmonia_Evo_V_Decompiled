.class Lcom/htc/painting/tool/pen/PropertyConstraintTable;
.super Ljava/lang/Object;
.source "PropertyConstraintTable.java"


# instance fields
.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/painting/tool/pen/IPropertyConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/tool/pen/IPropertyConstraint;

    invoke-interface {v0}, Lcom/htc/painting/tool/pen/IPropertyConstraint;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMissingKeys([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/tool/pen/IPropertyConstraint;

    invoke-interface {v7}, Lcom/htc/painting/tool/pen/IPropertyConstraint;->isRequire()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    return-object v7

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_3
.end method

.method isCorrectType(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/painting/tool/pen/IPropertyConstraint;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/htc/painting/tool/pen/IPropertyConstraint;->isCorrectType(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
