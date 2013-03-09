.class public Lcom/htc/dlnamiddlelayer/BrowseCmdList;
.super Ljava/util/LinkedList;
.source "BrowseCmdList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/htc/dlnamiddlelayer/BrowseCmdItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowseCmdItem(J)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    .locals 3
    .parameter "uniqueUID"

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-wide v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    .line 98
    :goto_1
    return-object v1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isBrowsingCmdExist(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    .line 112
    :goto_1
    return v1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(J)V
    .locals 4
    .parameter "uniqueUID"

    .prologue
    .line 14
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "BrowseCmd remove"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-wide v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 19
    invoke-super {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 20
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowseCmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void

    .line 15
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(IJ)Z
    .locals 4
    .parameter "cookie"
    .parameter "uniqueID"

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-wide v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 62
    invoke-super {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 63
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowseCmd remove: cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x1

    .line 68
    :goto_1
    return v1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "server"
    .parameter "contentID"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, bRemoved:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 31
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    .line 35
    .local v1, item:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    iget v3, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 38
    const/4 v0, 0x1

    .line 39
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrowseCmd: cookie:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v1           #item:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_1
    return v0
.end method

.method public removeDueToNoServer(Ljava/lang/String;)V
    .locals 5
    .parameter "serverID"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    .line 78
    .local v0, item:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isServerRemoved:Z

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 83
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowseCmd server removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0           #item:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_1
    return-void
.end method
