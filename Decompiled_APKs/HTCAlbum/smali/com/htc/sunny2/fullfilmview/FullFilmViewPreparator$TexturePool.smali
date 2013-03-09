.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TexturePool"
.end annotation


# instance fields
.field private mTexturePool:[Lcom/htc/sunny2/Texture;

.field private textureCounts:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V
    .locals 3
    .parameter
    .parameter "textureCacheSize"

    .prologue
    const/4 v2, 0x0

    .line 227
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    .line 225
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 228
    new-array v1, p2, [Lcom/htc/sunny2/Texture;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 230
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object v2, v1, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    return v0
.end method


# virtual methods
.method public get()Lcom/htc/sunny2/Texture;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v1, v3, v0

    .line 238
    .local v1, reusableTexture:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object v2, v3, v0

    .line 239
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 244
    .end local v1           #reusableTexture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v1

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 244
    goto :goto_1
.end method

.method public put(Lcom/htc/sunny2/Texture;)Z
    .locals 2
    .parameter "textureHandle"

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object p1, v1, v0

    .line 251
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 253
    const/4 v1, 0x1

    .line 256
    :goto_1
    return v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
