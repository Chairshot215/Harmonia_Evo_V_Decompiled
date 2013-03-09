.class public Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
.super Ljava/lang/Object;
.source "BrowseCmdItem.java"


# instance fields
.field public isBrowsingDown:Z

.field public isComplete:Z

.field public isServerRemoved:Z

.field public lBrowseUniqueID:J

.field public mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

.field public mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

.field public mServerID:Ljava/lang/String;

.field public nBrowsedCookie:I

.field public nBrowsedCount:I

.field public nCount:I

.field public nFirstIndex:J

.field public nLastIndex:J

.field public nStartIndex:J

.field public sBrowsedID:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJ)V
    .locals 5
    .parameter "cookie"
    .parameter "uniqueID"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    .line 10
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 11
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    .line 14
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    .line 15
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    .line 16
    iput v0, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    .line 17
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    .line 18
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 19
    iput-boolean v4, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    .line 20
    iput v0, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    .line 21
    iput-boolean v4, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isComplete:Z

    .line 22
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isServerRemoved:Z

    .line 26
    iput p1, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    .line 27
    iput-wide p2, p0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    .line 28
    return-void
.end method
