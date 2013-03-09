.class public Lcom/htc/dlnamiddlelayer/ServerItem;
.super Ljava/lang/Object;
.source "ServerItem.java"


# instance fields
.field private mUPnPServer:Lcom/awox/jUPnPCP/UPnPContentServer;

.field private sThumbIconPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;)V
    .locals 1
    .parameter "aUPnPServer"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->mUPnPServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->sThumbIconPath:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->mUPnPServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 22
    return-void
.end method


# virtual methods
.method public getThumbIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->sThumbIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUPnPServer()Lcom/awox/jUPnPCP/UPnPContentServer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->mUPnPServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    return-object v0
.end method

.method public setThumbIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sPath"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ServerItem;->sThumbIconPath:Ljava/lang/String;

    .line 27
    return-void
.end method
