.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemsAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    }
.end annotation


# instance fields
.field private itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

.field private itemsCount:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "FullFilmViewPreparator.ItemsAttributes"

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0           #i:I
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 72
    return-void
.end method

.method public isFileCacheNotSaved(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 140
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileCacheNotSaved NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    return v1

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 145
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 148
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public isOffLineDecode(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 114
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffLineDecode NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    :goto_0
    return v1

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 119
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 122
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public isTextureDirty(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 88
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextureDirty NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    :goto_0
    return v1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 93
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 96
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public reset(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "itemsCount"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 59
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 61
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    new-array v0, v0, [Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 62
    return-void
.end method

.method public setFileCacheNotSaved(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fileCacheNotSaved"

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFileCacheNotSaved NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 132
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 134
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 136
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public setOffLineDecode(IZ)V
    .locals 4
    .parameter "index"
    .parameter "offLineDecode"

    .prologue
    .line 101
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffLineDecode NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 106
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 108
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 110
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public setTextureDirty(IZ)V
    .locals 4
    .parameter "index"
    .parameter "dirty"

    .prologue
    .line 75
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureDirty NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 80
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 82
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 84
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method
