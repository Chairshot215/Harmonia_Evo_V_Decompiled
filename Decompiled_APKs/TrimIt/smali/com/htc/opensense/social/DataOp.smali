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
    .parameter "_service"

    .prologue
    .line 37
    .local p0, this:Lcom/htc/opensense/social/DataOp;,"Lcom/htc/opensense/social/DataOp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    .line 39
    return-void
.end method

.method public static convertToAttachmentList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Attachment;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .parameter "service"
    .parameter "atts"
    .parameter
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

    .prologue
    .line 146
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/social/data/Attachment;>;"
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v2, attList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/social/data/Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 149
    .local v1, att:Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual {v1, p2}, Lcom/htc/opensense/social/data/Attachment;->loadToObject(Ljava/lang/Class;)Lcom/htc/opensense/social/data/Attachment;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v0           #arr$:[Lcom/htc/opensense/social/data/Attachment;
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v2
.end method

.method protected static convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;
    .locals 6
    .parameter "service"
    .parameter
    .parameter
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

    .prologue
    .line 200
    .local p1, dataList:[Landroid/os/Parcelable;,"[TT;"
    .local p2, creator:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v4, serviceList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 203
    .local v1, data:Landroid/os/Parcelable;,"TT;"
    invoke-virtual {p2, p0, v1}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v1           #data:Landroid/os/Parcelable;,"TT;"
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #serviceList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .parameter
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

    .prologue
    .line 215
    .local p2, creator:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    invoke-virtual {p2, p0, p1}, Lcom/htc/opensense/social/DataOp$OpCreator;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .parameter
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

    .prologue
    .line 223
    .local p2, creator:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    invoke-virtual {p2, p0, p1}, Lcom/htc/opensense/social/DataOp$OpCreator;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;
    .locals 2
    .parameter "intent"

    .prologue
    .line 267
    const-string v1, "com.htc.opensense.OPININTENT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ParcelableOp;

    .line 268
    .local v0, service:Lcom/htc/opensense/social/ParcelableOp;
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, v0, Lcom/htc/opensense/social/ParcelableOp;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeOpListToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "intent"
    .parameter "extraName"
    .parameter
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

    .prologue
    .line 255
    .local p2, serviceList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/opensense/social/DataOp;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 256
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 257
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/DataOp;

    .line 258
    .local v0, data:Lcom/htc/opensense/social/DataOp;
    invoke-virtual {v0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0           #data:Lcom/htc/opensense/social/DataOp;
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 261
    const-string v4, "com.htc.opensense.OPININTENT"

    new-instance v5, Lcom/htc/opensense/social/ParcelableOp;

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/DataOp;

    iget-object v3, v3, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v5, v3}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    .end local v1           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static writeOpListToIntent(Landroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .parameter "intent"
    .parameter
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

    .prologue
    .line 238
    .local p1, serviceList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/opensense/social/DataOp;>;"
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/DataOp;->writeOpListToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public static writeOpToIntent(Landroid/content/Intent;Lcom/htc/opensense/social/DataOp;)V
    .locals 1
    .parameter "intent"
    .parameter "service"

    .prologue
    .line 230
    const-string v0, "com.htc.opensense.DATAININTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/DataOp;->writeOpToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V

    .line 231
    return-void
.end method

.method public static writeOpToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V
    .locals 3
    .parameter "intent"
    .parameter "extraName"
    .parameter "service"

    .prologue
    .line 246
    invoke-virtual {p2}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string v0, "com.htc.opensense.OPININTENT"

    new-instance v1, Lcom/htc/opensense/social/ParcelableOp;

    iget-object v2, p2, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v1, v2}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    return-void
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "feature"
    .parameter
    .parameter "params"
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

    .prologue
    .line 102
    .local p0, this:Lcom/htc/opensense/social/DataOp;,"Lcom/htc/opensense/social/DataOp<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/social/data/Attachment;>;"
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 103
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    .line 104
    .local v0, data:Landroid/os/Parcelable;
    instance-of v3, v0, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v3, :cond_0

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v0, Lcom/htc/opensense/social/data/AttachableData;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-interface {v0}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4, p3, v2}, Lcom/htc/opensense/social/ISocialService;->addAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0

    .line 114
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/os/Parcelable;
    :cond_0
    new-instance v3, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v4, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;)V

    throw v3
.end method

.method public deleteAttachment(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/opensense/social/data/Attachment;)V
    .locals 6
    .parameter "feature"
    .parameter
    .parameter "attachment"
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

    .prologue
    .line 124
    .local p0, this:Lcom/htc/opensense/social/DataOp;,"Lcom/htc/opensense/social/DataOp<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/social/data/Attachment;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    .line 125
    .local v0, data:Landroid/os/Parcelable;
    instance-of v3, v0, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v3, :cond_0

    .line 126
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 128
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v0, Lcom/htc/opensense/social/data/AttachableData;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-interface {v0}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5, v2}, Lcom/htc/opensense/social/ISocialService;->deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 135
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 132
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #error:Lcom/htc/opensense/social/RemoteError;
    .restart local v0       #data:Landroid/os/Parcelable;
    :cond_0
    new-instance v3, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v4, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;)V

    throw v3
.end method

.method public getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .parameter "feature"
    .parameter
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

    .prologue
    .line 80
    .local p0, this:Lcom/htc/opensense/social/DataOp;,"Lcom/htc/opensense/social/DataOp<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/social/data/Attachment;>;"
    new-instance v3, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v3}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 81
    .local v3, error:Lcom/htc/opensense/social/RemoteError;
    invoke-virtual {p0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v1

    .line 82
    .local v1, data:Landroid/os/Parcelable;
    instance-of v4, v1, Lcom/htc/opensense/social/data/AttachableData;

    if-eqz v4, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, atts:[Lcom/htc/opensense/social/data/Attachment;
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    check-cast v1, Lcom/htc/opensense/social/data/AttachableData;

    .end local v1           #data:Landroid/os/Parcelable;
    invoke-interface {v1}, Lcom/htc/opensense/social/data/AttachableData;->getIndicator()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, v3}, Lcom/htc/opensense/social/ISocialService;->getAttachments(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    invoke-virtual {v3}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 91
    iget-object v4, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v4, v0, p2}, Lcom/htc/opensense/social/DataOp;->convertToAttachmentList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Attachment;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "DataService"

    const-string v5, "getAttachments"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v0           #atts:[Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #data:Landroid/os/Parcelable;
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
    .parameter
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

    .prologue
    .line 51
    .local p0, this:Lcom/htc/opensense/social/DataOp;,"Lcom/htc/opensense/social/DataOp<TT;>;"
    .local p1, profiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 53
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v11, v12, [Lcom/htc/opensense/social/data/Profile;

    .line 54
    .local v11, profileArray:[Lcom/htc/opensense/social/data/Profile;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 55
    .local v7, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 56
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 57
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 58
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/data/Profile;

    .line 59
    .local v10, profile:Lcom/htc/opensense/social/data/Profile;
    if-nez v10, :cond_0

    .line 60
    new-instance v10, Lcom/htc/opensense/social/data/Profile;

    .end local v10           #profile:Lcom/htc/opensense/social/data/Profile;
    invoke-direct {v10, v6}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v10       #profile:Lcom/htc/opensense/social/data/Profile;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aput-object v10, v11, v4

    move v4, v3

    .line 63
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 64
    .end local v6           #id:Ljava/lang/String;
    .end local v10           #profile:Lcom/htc/opensense/social/data/Profile;
    :cond_1
    iget-object v12, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v12, v11, v2}, Lcom/htc/opensense/social/ISocialService;->refreshProfiles([Lcom/htc/opensense/social/data/Profile;Lcom/htc/opensense/social/RemoteError;)V

    .line 65
    move-object v0, v11

    .local v0, arr$:[Lcom/htc/opensense/social/data/Profile;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v9, v0, v5

    .line 66
    .local v9, p:Lcom/htc/opensense/social/data/Profile;
    iget-object v12, v9, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    .end local v0           #arr$:[Lcom/htc/opensense/social/data/Profile;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v7           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8           #len$:I
    .end local v9           #p:Lcom/htc/opensense/social/data/Profile;
    .end local v11           #profileArray:[Lcom/htc/opensense/social/data/Profile;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Landroid/os/RemoteException;
    const-string v12, "DataService"

    const-string v13, "getAttachments"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 72
    return-object p1
.end method
