.class public Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
.super Ljava/lang/Object;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PHPresetItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mOrder:I

.field private mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 2
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mProperties:Ljava/util/Map;

    .line 1928
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 1946
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mOrder:I

    return v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mName:Ljava/lang/String;

    .line 1951
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "mOrder"

    .prologue
    .line 1942
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mOrder:I

    .line 1943
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1934
    .local p1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mProperties:Ljava/util/Map;

    .line 1935
    return-void
.end method

.method public setPropertyById(Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 1
    .parameter "propertyId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1938
    .local p2, property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->mProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    return-void
.end method
