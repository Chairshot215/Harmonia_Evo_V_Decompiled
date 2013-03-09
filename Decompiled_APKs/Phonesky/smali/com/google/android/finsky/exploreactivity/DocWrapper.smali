.class public Lcom/google/android/finsky/exploreactivity/DocWrapper;
.super Ljava/lang/Object;
.source "DocWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDocid:Ljava/lang/String;

.field private mInProgressState:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedState:I

.field private mRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSong:Lcom/google/android/finsky/api/model/Document;

.field private mSongList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .parameter "doc"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {v1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mListeners:Ljava/util/List;

    .line 51
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    .line 54
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setDoc(Lcom/google/android/finsky/api/model/Document;)V

    .line 85
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 255
    .local v0, s:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_0

    .line 256
    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_1

    .line 259
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 262
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_2
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_3

    .line 265
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearInProgress()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    .line 125
    return-void
.end method

.method public disposeObjects(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, bitmapToDispose:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "Unloading %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    .line 160
    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    .line 162
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 163
    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mRelations:Ljava/util/List;

    .line 165
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 166
    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSongList:Ljava/util/List;

    .line 168
    :cond_4
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    .line 169
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    .line 171
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 277
    instance-of v0, p1, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    .end local p1
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDoc()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    return-object v0
.end method

.method public getInProgressState()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    return v0
.end method

.method public getLoadedState()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    return v0
.end method

.method public getRelatedItemUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const-string v0, "rec?c=%d&doc=%s&rt=1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mRelations:Ljava/util/List;

    return-object v0
.end method

.method public getSong()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSong:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public markInProgress(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "Loading %s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    .line 121
    return-void
.end method

.method public markLoaded(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 104
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Loaded %s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    .line 106
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mInProgressState:I

    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;->docChanged(Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public setDoc(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "doc"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mDocid:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    .line 97
    :cond_0
    return-void
.end method

.method public setRelations(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mRelations:Ljava/util/List;

    .line 191
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markLoaded(I)V

    .line 192
    return-void
.end method

.method public setSong(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "song"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSong:Lcom/google/android/finsky/api/model/Document;

    .line 200
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markLoaded(I)V

    .line 201
    return-void
.end method

.method public setSongList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, songList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSongList:Ljava/util/List;

    .line 209
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markLoaded(I)V

    .line 210
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markLoaded(I)V

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v0, s:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mRelations:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 235
    const-string v1, ",R="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSongList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 239
    const-string v1, ",S="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mSongList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2

    .line 243
    const-string v1, ",D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_2
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mLoadedState:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 246
    const-string v1, ",T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocWrapper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
