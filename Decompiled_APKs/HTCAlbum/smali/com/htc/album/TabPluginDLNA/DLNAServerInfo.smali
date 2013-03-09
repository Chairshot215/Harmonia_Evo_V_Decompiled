.class public Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
.super Ljava/lang/Object;
.source "DLNAServerInfo.java"


# instance fields
.field public mID:Ljava/lang/String;

.field public mIsRefresh:Z

.field public mIsRemove:Z

.field public mLocation:Ljava/lang/String;

.field public mMediumID:Ljava/lang/String;

.field public mMediumName:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mRequestServer:Z

.field public mUriThumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    .line 12
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRemove:Z

    .line 13
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    return-void
.end method
