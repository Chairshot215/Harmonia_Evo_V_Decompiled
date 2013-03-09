.class public Lcom/android/providers/contacts/ProjectionMap$Builder;
.super Ljava/lang/Object;
.source "ProjectionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ProjectionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMap:Lcom/android/providers/contacts/ProjectionMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/providers/contacts/ProjectionMap;

    invoke-direct {v0}, Lcom/android/providers/contacts/ProjectionMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 1
    .parameter "column"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    #calls: Lcom/android/providers/contacts/ProjectionMap;->putColumn(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p1}, Lcom/android/providers/contacts/ProjectionMap;->access$000(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 3
    .parameter "alias"
    .parameter "expression"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

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

    #calls: Lcom/android/providers/contacts/ProjectionMap;->putColumn(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/providers/contacts/ProjectionMap;->access$000(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object p0
.end method

.method public addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 5
    .parameter "map"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/providers/contacts/ProjectionMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/ProjectionMap;->putColumn(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v3}, Lcom/android/providers/contacts/ProjectionMap;->access$000(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public build()Lcom/android/providers/contacts/ProjectionMap;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 52
    .local v0, columns:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    iput-object v0, v1, Lcom/android/providers/contacts/ProjectionMap;->mColumns:[Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->mMap:Lcom/android/providers/contacts/ProjectionMap;

    return-object v1
.end method
