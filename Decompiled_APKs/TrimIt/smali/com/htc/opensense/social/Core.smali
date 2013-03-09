.class public abstract Lcom/htc/opensense/social/Core;
.super Ljava/lang/Object;
.source "Core.java"


# instance fields
.field protected _service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

.field data:Landroid/os/Bundle;

.field protected mService:Lcom/htc/opensense/social/ISocialService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 11
    iput-object v1, p0, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 12
    iput-object v1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 27
    return-void
.end method


# virtual methods
.method public addTag([Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addTags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public deleteTags([Ljava/lang/String;)V
    .locals 3
    .parameter "commentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->deleteTags(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public getTags()[Lcom/htc/opensense/social/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/social/Core;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getTags(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Tag;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method public setService(Lcom/htc/opensense/social/ISocialInterfaceProxy;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 22
    invoke-static {p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 24
    return-void
.end method

.method public setService(Lcom/htc/opensense/social/ISocialService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 16
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 18
    return-void
.end method
