.class Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;
.super Ljava/lang/Object;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseRequestManager"
.end annotation


# instance fields
.field private mMaxRequestSize:I

.field private mRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V
    .locals 1
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mMaxRequestSize:I

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1063
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->remove()V

    .line 1064
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getnRemove(J)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    .locals 4
    .parameter "uniqueID"

    .prologue
    .line 1077
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1079
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->cmdBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;

    .line 1082
    .local v1, item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    .end local v1           #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 1077
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1077
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 1092
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestItem(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 1097
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;

    iget v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 1100
    const/4 v1, 0x1

    .line 1103
    :goto_1
    monitor-exit p0

    return v1

    .line 1097
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1097
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove()V
    .locals 2

    .prologue
    .line 1071
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mMaxRequestSize:I

    if-lt v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->mRequestList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1073
    :cond_0
    monitor-exit p0

    return-void
.end method
