.class public abstract Lcom/htc/sunny2/TextureList;
.super Ljava/lang/Object;
.source "TextureList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/TextureList$TextureObjList;
    }
.end annotation


# static fields
.field public static final TYPE_MULTIPLE:I = 0x1

.field public static final TYPE_SINGLE:I


# instance fields
.field private mItemsCount:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/TextureList$TextureObjList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/sunny2/TextureList;->mItemsCount:I

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/sunny2/TextureList;->mItemsCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/TextureList;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract findAValidIndexNotInRange(II)I
.end method

.method public abstract findAValidIndexNotInRange(III)I
.end method

.method public get(I)Lcom/htc/sunny2/TextureList$TextureObjList;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/TextureList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/TextureList$TextureObjList;

    return-object v0
.end method

.method public abstract getIdentifier(I)Ljava/lang/String;
.end method

.method public getItemsCount()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/TextureList;->mItemsCount:I

    return v0
.end method

.method public abstract getMaxValidIndex()I
.end method

.method public abstract getMinValidIndex()I
.end method

.method public put(II)V
    .locals 2

    new-instance v0, Lcom/htc/sunny2/TextureList$TextureObjList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/TextureList$TextureObjList;-><init>(Lcom/htc/sunny2/TextureList;I)V

    iget-object v1, p0, Lcom/htc/sunny2/TextureList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract put(IILjava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)I
.end method

.method public remove(I)Lcom/htc/sunny2/TextureList$TextureObjList;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/TextureList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/TextureList$TextureObjList;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/TextureList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
