.class public Lcom/jme3/asset/AssetKey;
.super Ljava/lang/Object;
.source "AssetKey.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# instance fields
.field protected transient extension:Ljava/lang/String;

.field protected transient folder:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/jme3/asset/AssetKey;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/jme3/asset/AssetKey;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/AssetKey;->extension:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/16 v3, 0x2e

    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 61
    .local v0, idx:I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 63
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 67
    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 68
    :cond_1
    const-string v1, ""

    .line 70
    :goto_0
    return-object v1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 74
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 75
    .local v0, idx:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    const-string v1, ""

    .line 78
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static reducePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 144
    if-eqz p0, :cond_0

    const-string v5, "./"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 171
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 147
    .restart local p0
    :cond_1
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, parts:[Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 149
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_6

    .line 150
    aget-object v4, v3, v1

    .line 151
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_3
    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 155
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 157
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Relative path is outside assetmanager root!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    .end local v4           #string:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 165
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .restart local v4       #string:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 167
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 171
    .end local v4           #string:Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public createClonedInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "asset"

    .prologue
    .line 118
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 176
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    instance-of v0, p1, Lcom/jme3/asset/AssetKey;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    check-cast p1, Lcom/jme3/asset/AssetKey;

    .end local p1
    iget-object v1, p1, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->folder:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/jme3/asset/AssetKey;->getFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/AssetKey;->folder:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 184
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public postProcess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "asset"

    .prologue
    .line 105
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 199
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/asset/AssetKey;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/jme3/asset/AssetKey;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/asset/AssetKey;->extension:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public shouldCache()Z
    .locals 1

    .prologue
    .line 126
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    iget-object v0, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public useSmartCache()Z
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
