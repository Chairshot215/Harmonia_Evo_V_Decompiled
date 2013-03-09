.class public Lcom/htc/opensense/social/MediumOp;
.super Lcom/htc/opensense/social/DataOp;
.source "MediumOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Medium;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Medium;",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mMedium:Lcom/htc/opensense/social/data/Medium;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/htc/opensense/social/MediumOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/MediumOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)V
    .locals 0
    .parameter "service"
    .parameter "medium"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 48
    iput-object p2, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    .line 50
    return-void
.end method

.method public static readFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/MediumOp;
    .locals 3
    .parameter "intent"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 70
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataFromIntent(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    .line 72
    .local v0, medium:Lcom/htc/opensense/social/data/Medium;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 73
    new-instance v2, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/MediumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)V

    .line 75
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
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 89
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 94
    .local v3, mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 95
    .local v0, data:Landroid/os/Parcelable;
    new-instance v5, Lcom/htc/opensense/social/MediumOp;

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-direct {v5, v4, v0}, Lcom/htc/opensense/social/MediumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/MediumOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 147
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/MediumOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/MediumOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 138
    sget-object v0, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

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
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/MediumOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

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
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 156
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/social/MediumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v3, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget v4, v4, Lcom/htc/opensense/social/data/Medium;->type:I

    invoke-interface {v2, v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->deleteMedium(Ljava/lang/String;ILcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DataService"

    const-string v3, "delete deleteMedium"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_1
.end method

.method public edit(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "dataToModify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 171
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 173
    .local v2, modified:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/MediumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget v5, v5, Lcom/htc/opensense/social/data/Medium;->type:I

    invoke-interface {v3, v4, v5, p1, v1}, Lcom/htc/opensense/social/ISocialService;->editMedium(Ljava/lang/String;ILandroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 179
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 180
    return-object v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DataService"

    const-string v4, "editMedium "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Medium;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    return-object v0
.end method

.method public getFullInfo(II)V
    .locals 10
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 112
    .local v5, remoteError:Lcom/htc/opensense/social/RemoteError;
    const/4 v7, 0x0

    .line 114
    .local v7, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    iget v2, v2, Lcom/htc/opensense/social/data/Medium;->type:I

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService;->getMedia([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 120
    :goto_0
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 123
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget v1, v1, Lcom/htc/opensense/social/data/Medium;->type:I

    iput v1, v0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-wide v1, v1, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 132
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    iget-wide v1, v1, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    .line 133
    iget-object v0, p0, Lcom/htc/opensense/social/MediumOp;->mMedium:Lcom/htc/opensense/social/data/Medium;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Medium;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setExtra(Landroid/os/Bundle;)V

    .line 135
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v6

    .line 117
    .local v6, e:Landroid/os/RemoteException;
    iput-boolean v9, v5, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 118
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
