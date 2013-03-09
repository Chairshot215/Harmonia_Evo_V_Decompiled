.class public abstract Lcom/htc/opensense/social/DataOp;
.super Ljava/lang/Object;
.source "DataOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/DataOp$OpCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DATAINTENT:Ljava/lang/String; = "com.htc.opensense.DATAININTENT"

.field static final DATALISTINTENT:Ljava/lang/String; = "com.htc.opensense.DATALISTINTENT"

.field public static final LOG_TAG:Ljava/lang/String; = "DataService"

.field static final OPINTENT:Ljava/lang/String; = "com.htc.opensense.OPININTENT"


# instance fields
.field protected final socialService:Lcom/htc/opensense/social/ISocialService;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    return-void
.end method

.method public static convertToAttachmentList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Attachment;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">(",
            "Lcom/htc/opensense/social/ISocialService;",
            "[",
            "Lcom/htc/opensense/social/data/Attachment;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1, p2}, Lcom/htc/opensense/social/data/Attachment;->loadToObject(Ljava/lang/Class;)Lcom/htc/opensense/social/data/Attachment;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v2
.end method

.method protected static convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            "E:",
            "Lcom/htc/opensense/social/DataOp",
            "<TT;>;>(",
            "Lcom/htc/opensense/social/ISocialService;",
            "[TT;",
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<TT;TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {p2, p0, v1}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            "E:",
            "Lcom/htc/opensense/social/DataOp",
            "<TT;>;>(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/htc/opensense/social/DataOp$OpCreator;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            "E:",
            "Lcom/htc/opensense/social/DataOp",
            "<TT;>;>(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<TT;TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/htc/opensense/social/DataOp$OpCreator;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;
    .locals 2

    const-string v1, "com.htc.opensense.OPININTENT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ParcelableOp;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/social/ParcelableOp;->mService:Lcom/htc/opensense/social/ISocialService;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeOpListToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/opensense/social/DataOp;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/DataOp;

    invoke-virtual {v0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v4, "com.htc.opensense.OPININTENT"

    new-instance v5, Lcom/htc/opensense/social/ParcelableOp;

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/DataOp;

    iget-object v3, v3, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v5, v3}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public static writeOpListToIntent(Landroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/opensense/social/DataOp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.htc.opensense.DATALISTINTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/DataOp;->writeOpListToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static writeOpToIntent(Landroid/content/Intent;Lcom/htc/opensense/social/DataOp;)V
    .locals 1

    const-string v0, "com.htc.opensense.DATAININTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/DataOp;->writeOpToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V

    return-void
.end method

.method public static writeOpToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V
    .locals 3

    invoke-virtual {p2}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.htc.opensense.OPININTENT"

    new-instance v1, Lcom/htc/opensense/social/ParcelableOp;

    iget-object v2, p2, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v1, v2}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v3, v0, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v0, Lcom/htc/opensense/social/data/AttachableData;

    invoke-interface {v0}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4, p3, v2}, Lcom/htc/opensense/social/ISocialService;->addAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    return-void

    :catch_0
    move-exception v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v4, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;)V

    throw v3
.end method

.method public deleteAttachment(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/opensense/social/data/Attachment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;",
            "Lcom/htc/opensense/social/data/Attachment;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v3, v0, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v3, :cond_0

    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v0, Lcom/htc/opensense/social/data/AttachableData;

    invoke-interface {v0}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5, v2}, Lcom/htc/opensense/social/ISocialService;->deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    return-void

    :catch_0
    move-exception v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v4, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;)V

    throw v3
.end method

.method public getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    new-instance v3, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v3}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v1

    instance-of v4, v1, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v1, Lcom/htc/opensense/social/data/AttachableData;

    invoke-interface {v1}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, v3}, Lcom/htc/opensense/social/ISocialService;->getAttachments(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    iget-object v4, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v4, v0, p2}, Lcom/htc/opensense/social/DataOp;->convertToAttachmentList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Attachment;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    const-string v4, "DataService"

    const-string v5, "getAttachments"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v5, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    invoke-direct {v4, v5}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;)V

    throw v4
.end method

.method public abstract getData()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v11, v12, [Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/data/Profile;

    if-nez v10, :cond_0

    new-instance v10, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v10, v6}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v4, 0x1

    aput-object v10, v11, v4

    move v4, v3

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v12, v11, v2}, Lcom/htc/opensense/social/ISocialService;->refreshProfiles([Lcom/htc/opensense/social/data/Profile;Lcom/htc/opensense/social/RemoteError;)V

    move-object v0, v11

    array-length v8, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v9, v0, v5

    iget-object v12, v9, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v12, "DataService"

    const-string v13, "getAttachments"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    return-object p1
.end method
