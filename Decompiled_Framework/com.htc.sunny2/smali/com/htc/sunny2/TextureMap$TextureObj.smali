.class public Lcom/htc/sunny2/TextureMap$TextureObj;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/TextureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureObj"
.end annotation


# instance fields
.field private mIsRecycled:Z

.field private mReferenceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTexture:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/TextureMap;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/TextureMap;ILcom/htc/sunny2/Texture;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->this$0:Lcom/htc/sunny2/TextureMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mIsRecycled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/TextureMap$TextureObj;->addReference(I)V

    return-void
.end method

.method private releaseReference(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addReference(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/TextureMap$TextureObj;->releaseReference(I)V

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/TextureMap$TextureObj;->this$0:Lcom/htc/sunny2/TextureMap;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/TextureMap;->recycle(Lcom/htc/sunny2/TextureMap$TextureObj;)V

    :cond_0
    return-void
.end method
