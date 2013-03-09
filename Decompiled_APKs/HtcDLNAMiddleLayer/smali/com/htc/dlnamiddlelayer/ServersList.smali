.class public Lcom/htc/dlnamiddlelayer/ServersList;
.super Ljava/util/LinkedList;
.source "ServersList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/htc/dlnamiddlelayer/ServerItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/awox/jUPnPCP/UPnPContentServer;)Z
    .locals 4
    .parameter "aServer"

    .prologue
    .line 25
    new-instance v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    invoke-direct {v1, p1}, Lcom/htc/dlnamiddlelayer/ServerItem;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;)V

    invoke-super {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return v0

    .line 28
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is failed to add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getServerItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ServerItem;
    .locals 2
    .parameter "serverId"

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ServersList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ServersList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ServerItem;->getUPnPServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ServersList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    .line 69
    :goto_1
    return-object v1

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;
    .locals 2
    .parameter "serverId"

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ServersList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ServersList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ServerItem;->getUPnPServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ServersList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ServerItem;->getUPnPServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v1

    .line 56
    :goto_1
    return-object v1

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)V
    .locals 4
    .parameter "aServer"

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ServersList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ServersList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/ServerItem;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ServerItem;->getUPnPServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-super {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 40
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
