.class public Lcom/htc/opensense/social/AlbumOp;
.super Lcom/htc/opensense/social/DataOp;
.source "AlbumOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Album;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Album;",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AlbumOp"


# instance fields
.field private final mAlbum:Lcom/htc/opensense/social/data/Album;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/opensense/social/AlbumOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/AlbumOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Album;)V
    .locals 0
    .parameter "service"
    .parameter "album"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 45
    iput-object p2, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    .line 46
    return-void
.end method

.method public static readFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/AlbumOp;
    .locals 3
    .parameter "intent"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 116
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    const-string v2, "com.htc.opensense.DATAININTENT"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 118
    .local v0, album:Lcom/htc/opensense/social/data/Album;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 119
    new-instance v2, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/AlbumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Album;)V

    .line 121
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/AlbumOp;
    .locals 3
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 149
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 150
    .local v0, album:Lcom/htc/opensense/social/data/Album;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 151
    new-instance v2, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/AlbumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Album;)V

    .line 153
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 131
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    const-string v5, "com.htc.opensense.DATALISTINTENT"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 133
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 134
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    .line 136
    .local v1, data:Lcom/htc/opensense/social/data/Album;
    new-instance v5, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v5, v4, v1}, Lcom/htc/opensense/social/AlbumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0           #albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    .end local v1           #data:Lcom/htc/opensense/social/data/Album;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static readListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 162
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 164
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    .line 166
    .local v1, data:Lcom/htc/opensense/social/data/Album;
    new-instance v5, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v5, v4, v1}, Lcom/htc/opensense/social/AlbumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v0           #albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    .end local v1           #data:Lcom/htc/opensense/social/data/Album;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/AlbumOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 192
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/AlbumOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/AlbumOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/AlbumOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 177
    sget-object v0, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/AlbumOp;

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/AlbumOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 205
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v3, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/htc/opensense/social/ISocialService;->deleteAlbum(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 211
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AlbumOp"

    const-string v3, "get media list"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public edit(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "dataToModify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 215
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 217
    .local v2, modified:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-interface {v3, v4, p1, v1}, Lcom/htc/opensense/social/ISocialService;->editAlbum(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 223
    return-object v2

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AlbumOp"

    const-string v4, "get media list"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Album;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    return-object v0
.end method

.method public getMedia(II)Ljava/util/List;
    .locals 8
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 90
    .local v5, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v7, 0x0

    .line 92
    .local v7, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService;->getMediaOf(Lcom/htc/opensense/social/data/Album;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 97
    :goto_0
    invoke-virtual {v5}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 98
    iget-object v0, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v7, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v6

    .line 94
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "AlbumOp"

    const-string v1, "get media list"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public getMedia(III)Ljava/util/List;
    .locals 8
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 66
    .local v5, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v7, 0x0

    .line 68
    .local v7, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/AlbumOp;->mAlbum:Lcom/htc/opensense/social/data/Album;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService;->getMediaOf(Lcom/htc/opensense/social/data/Album;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 73
    :goto_0
    invoke-virtual {v5}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 74
    iget-object v0, p0, Lcom/htc/opensense/social/AlbumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v7, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v6

    .line 70
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "AlbumOp"

    const-string v1, "get media list"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method
