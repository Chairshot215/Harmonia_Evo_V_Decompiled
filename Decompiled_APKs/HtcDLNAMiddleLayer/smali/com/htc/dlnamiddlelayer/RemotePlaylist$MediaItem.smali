.class Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
.super Ljava/lang/Object;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItem"
.end annotation


# instance fields
.field public nPlayable:I

.field public sMediaId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->nPlayable:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;)V

    return-void
.end method
