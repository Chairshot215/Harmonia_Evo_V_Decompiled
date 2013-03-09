.class public abstract Lcom/htc/sunny2/TextureMap;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/TextureMap$TextureObj;
    }
.end annotation


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCount:I

.field private mTextureMaxCount:I

.field private mTexturePool:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/TextureMap$TextureObj;",
            ">;"
        }
    .end annotation
.end field

.field private mValidItemsCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "TextureMap.TexturePool TextureObj Recycler"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/TextureMap;->mTexturePool:Lcom/htc/sunny2/ObjectRecycler;

    iput p1, p0, Lcom/htc/sunny2/TextureMap;->mItemsCount:I

    iput p2, p0, Lcom/htc/sunny2/TextureMap;->mTextureMaxCount:I

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/sunny2/TextureMap;->mTextureMaxCount:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/TextureMap;->mHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/TextureMap;->mValidItemsCount:I

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
.end method

.method public abstract getTexturesCount()I
.end method

.method public obtain()Lcom/htc/sunny2/TextureMap$TextureObj;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap;->mTexturePool:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/TextureMap$TextureObj;

    return-object v0
.end method

.method public abstract put(Ljava/lang/String;Lcom/htc/sunny2/TextureMap$TextureObj;)Z
.end method

.method public recycle(Lcom/htc/sunny2/TextureMap$TextureObj;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap;->mTexturePool:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract releaseAllTextureObj()V
.end method

.method public abstract releaseReference(Ljava/lang/String;I)Z
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
