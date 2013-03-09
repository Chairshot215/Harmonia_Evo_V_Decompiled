.class Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
.super Ljava/lang/Object;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseRequestItem"
.end annotation


# instance fields
.field public action:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public cmdBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;

.field public contentID:Ljava/lang/String;

.field public listIndex:I

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V

    return-void
.end method
