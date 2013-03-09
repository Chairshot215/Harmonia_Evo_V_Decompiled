.class public Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "ServiceManagerDLNA.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "dlna"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://dlna"

.field public static final DLNA_ALBUM:I = 0x0

.field public static final DLNA_BROWSE_INFO:Ljava/lang/String; = "browse_info"

.field public static final DLNA_CONTENT_FULL:I = 0x2

.field public static final DLNA_CONTENT_THUMB:I = 0x1

.field public static final DLNA_DIRECTORY_INDEX:Ljava/lang/String; = "directory_index"

.field public static final DLNA_DIRECTORY_INFO:Ljava/lang/String; = "directory_info"

.field public static final DLNA_ERROR_ID:Ljava/lang/String; = "error_id"

.field public static final DLNA_ERROR_STRING:Ljava/lang/String; = "error_string"

.field public static final DLNA_FULLSCREEN_BUNDLE:Ljava/lang/String; = "fullscreen_bundle"

.field public static final DLNA_MAX_PAGE_ITEM:I = 0xc7

.field public static final DLNA_MAX_TIMEOUT:I = 0x1f4

.field public static final DLNA_MEDIUM_ID:Ljava/lang/String; = "medium_id"

.field public static final DLNA_MEDIUM_NAME:Ljava/lang/String; = "medium_name"

.field public static final DLNA_QUERYITEM_COUNT:I = 0x1e

.field public static final DLNA_SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final DLNA_SERVER_NAME:Ljava/lang/String; = "server_name"

.field public static final DLNA_SERVER_THUMB:I = 0x0

.field public static final DLNA_SERVICE:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MEDIUM_TYPE_AUDIO:Ljava/lang/String; = "1"

.field public static final MEDIUM_TYPE_FOLDER:Ljava/lang/String; = "0"

.field public static final MEDIUM_TYPE_IMAGE:Ljava/lang/String; = "2"

.field public static final MEDIUM_TYPE_SERVER:Ljava/lang/String; = "-1"

.field public static final MEDIUM_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final MEDIUM_TYPE_VIDEO:Ljava/lang/String; = "4"

.field public static final STORECOL_CONTAINER:Ljava/lang/String; = "container"

.field public static final STORECOL_CONTENT_FILETYPE:Ljava/lang/String; = "file_type"

.field public static final STORECOL_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final STORECOL_CONTENT_NAME:Ljava/lang/String; = "content_name"

.field public static final STORECOL_CONTENT_URI:Ljava/lang/String; = "uri_path"

.field public static final STORECOL_CONTENT_URITHUMB:Ljava/lang/String; = "thumbnail_uri"

.field public static final STORECOL_INDEX_ID:Ljava/lang/String; = "index_id"

.field public static final STORECOL_SERVER_ID:Ljava/lang/String; = "serve_id"

.field public static final ServiceError_InvalidParameter:I = -0x1f8

.field public static final ServiceError_IsNotContainer:I = -0x1f7

.field public static final ServiceError_RendererNotFound:I = -0x1f6

.field public static final ServiceError_ServerNotFound:I = -0x1f5

.field public static final UPnPError_AuthorizationFail:I = 0x321


# instance fields
.field private mBrowseSyncOnServiceConnected:Z

.field private mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field protected mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

.field private mIndexBegin:J

.field private mIndexEnd:J

.field private mIsBound:Z

.field private mIsInitialized:Z

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListServer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterID:I

.field private mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

.field private mServerListSyncOnServiceConnected:Z

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    .line 107
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 108
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 109
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 113
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIndexBegin:J

    .line 114
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIndexEnd:J

    .line 115
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 120
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 122
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    .line 243
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;-><init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;-><init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 541
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    .line 543
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onBindServiceConnection(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    return-object v0
.end method

.method public static getAudioContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    const-string v0, "content://dlna/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDMCLaunchUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    const-string v0, "content://dlna/gallery_launch_dmc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getImageContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://dlna/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getServerContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 91
    const-string v0, "content://dlna/server"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 87
    const-string v0, "content://dlna/videos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onBindServiceConnection(Z)V
    .locals 4
    .parameter "bAutoSync"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onBindServiceConnection]:... "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->registerServiceCallback()V

    .line 213
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_1

    .line 217
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onBindServiceConnection]: browse current folder"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowseFolderThis(Z)Z

    .line 221
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 234
    :cond_2
    :goto_1
    const/16 v1, 0x4e84

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-boolean v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    if-ne v1, v2, :cond_2

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerList(I)V

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onInitServiceConnection()V
    .locals 5

    .prologue
    .line 158
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 164
    .local v0, bret:Z
    if-nez v0, :cond_0

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    .line 167
    .end local v0           #bret:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onUninitServiceConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    if-ne v1, v2, :cond_0

    .line 176
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][onUninitServiceConnection]: unSubscribe server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->unRegisterServiceCallback()V

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 203
    :cond_1
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshListFromDatabase(Ljava/lang/String;JJ)V
    .locals 13
    .parameter "szContainerID"
    .parameter "lTopIndex"
    .parameter "lBottomIndex"

    .prologue
    .line 1204
    const-string v5, ""

    .line 1206
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const/4 v8, 0x0

    .line 1218
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1225
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/4 v10, 0x0

    .line 1230
    .local v10, nCount:I
    const/4 v11, -0x1

    .line 1232
    .local v11, nCountMid:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1234
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1236
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1238
    const/4 v8, 0x0

    .line 1239
    goto :goto_0

    .line 1244
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1247
    const/4 v9, 0x0

    .line 1248
    .local v9, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v12, 0x0

    .local v12, nIndex:I
    :goto_1
    if-le v10, v12, :cond_2

    .line 1250
    new-instance v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v9           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    invoke-direct {v9}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;-><init>()V

    .line 1251
    .restart local v9       #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iput v12, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 1252
    const-string v2, "content_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 1253
    const-string v2, "content_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 1254
    const-string v2, "uri_path"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 1256
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 1257
    const-string v2, "file_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 1258
    const-string v2, "index_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 1260
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1248
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1263
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1264
    const/4 v8, 0x0

    .line 1266
    goto/16 :goto_0
.end method

.method private scanDirectory()V
    .locals 3

    .prologue
    .line 1180
    const/4 v0, 0x0

    .line 1181
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 1183
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    return-void
.end method


# virtual methods
.method public addLatestBrowseFolder(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 955
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v1, :cond_1

    .line 961
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 958
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 959
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public browseCancel(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"

    .prologue
    .line 1270
    const/4 v6, 0x0

    .line 1272
    .local v6, bDone:Z
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1279
    if-nez v6, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v7

    .line 1284
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelThumbnailDownloadRequests()V
    .locals 4

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1196
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public destroyController(Ljava/lang/String;)V
    .locals 3
    .parameter "rendererID"

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1310
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V
    .locals 10
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 709
    :try_start_0
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: subscribe server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverSubscribed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 724
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v9

    .line 729
    .local v9, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: browse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 715
    .restart local v9       #e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: serverSubscribed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doContinueBrowseDown(JJII)V
    .locals 12
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v0, :cond_0

    .line 740
    const/4 v10, 0x0

    .line 741
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v11

    .line 750
    .local v11, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doContinueBrowseDown]: browse down: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableBrowseSyncOnServiceConnected()V
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 1321
    return-void
.end method

.method public enableSyncServerListOnServiceConnected()V
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    .line 1326
    return-void
.end method

.method public getBrowseList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getDirectoryIndex()I
    .locals 3

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1044
    .local v0, nIndex:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v2, :cond_0

    move v1, v0

    .line 1049
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 1047
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v0

    move v1, v0

    .line 1049
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0
.end method

.method public getDirectoryInfo()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1038
    return-object v0
.end method

.method public getDirectoryInfo(I)Ljava/lang/Object;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1055
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1057
    return-object v0
.end method

.method public getDirectoryInfoNextCached()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1061
    const/4 v0, 0x0

    .line 1063
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1065
    return-object v0
.end method

.method public getServerInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    return-object v0
.end method

.method public getServerList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    return-object v0
.end method

.method public getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    return-object v0
.end method

.method public goBrowseFolderNext(Ljava/lang/Object;)Z
    .locals 13
    .parameter "object"

    .prologue
    .line 838
    const/4 v8, 0x0

    .line 839
    .local v8, bResult:Z
    const/4 v11, 0x0

    .line 841
    .local v11, nCountDirectory:I
    if-nez p1, :cond_0

    move v9, v8

    .line 868
    .end local v8           #bResult:Z
    .end local p1
    .local v9, bResult:I
    :goto_0
    return v9

    .line 844
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getNext(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    .line 849
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 850
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 852
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 853
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 855
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 862
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 864
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 867
    const/4 v8, 0x1

    move v9, v8

    .line 868
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderPrevious()Z
    .locals 12

    .prologue
    .line 872
    const/4 v8, 0x0

    .line 874
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 875
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getPrevious()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 898
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 881
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 882
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    .line 884
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 885
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 887
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 892
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 894
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 897
    const/4 v8, 0x1

    move v9, v8

    .line 898
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderRoot()Z
    .locals 12

    .prologue
    .line 755
    const/4 v8, 0x0

    .line 756
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 758
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getRoot()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 775
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 761
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 762
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    .line 764
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 766
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 774
    const/4 v8, 0x1

    move v9, v8

    .line 775
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderThis(Z)Z
    .locals 14
    .parameter "bIsRefresh"

    .prologue
    .line 780
    const/4 v8, 0x0

    .line 782
    .local v8, bResult:Z
    const/4 v11, 0x0

    .line 783
    .local v11, nCountPage:I
    const/4 v10, 0x0

    .line 784
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 785
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 834
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 788
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 790
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 792
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_1

    .line 794
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][goBrowserFolderThis]: mServerInfo is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 795
    .restart local v9       #bResult:I
    goto :goto_0

    .line 798
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 799
    const-wide/16 v0, -0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xc7

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 804
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 809
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 832
    :goto_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 833
    const/4 v8, 0x1

    move v9, v8

    .line 834
    .restart local v9       #bResult:I
    goto/16 :goto_0

    .line 802
    .end local v9           #bResult:I
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v3

    const/16 v5, 0xc7

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto/16 :goto_1

    .line 814
    :cond_3
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 817
    .local v13, pageInfoInter:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 818
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 819
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 820
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 821
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 823
    const-wide/16 v0, -0x1

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 824
    const-wide/16 v0, -0x1

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 826
    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDLNA;->isStyleExpandable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 827
    const/16 v0, 0x4e8f

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v13, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 829
    :cond_4
    const/16 v0, 0x4e95

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v13, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_2
.end method

.method public goBrowsePageNext()Z
    .locals 13

    .prologue
    .line 902
    const/4 v8, 0x0

    .line 904
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 905
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 926
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 908
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 909
    .local v11, nCountPage:I
    const/4 v12, 0x0

    .line 911
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageNext()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 913
    if-nez v12, :cond_1

    move v9, v8

    .line 914
    .restart local v9       #bResult:I
    goto :goto_0

    .line 916
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 917
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 918
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePageNext]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePageNext]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 921
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 923
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 925
    const/4 v8, 0x1

    move v9, v8

    .line 926
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowsePagePrevious()Z
    .locals 12

    .prologue
    .line 930
    const/4 v8, 0x0

    .line 932
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 933
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 951
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 936
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 937
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPagePrevious()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    if-nez v11, :cond_1

    move v9, v8

    .line 938
    .restart local v9       #bResult:I
    goto :goto_0

    .line 940
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 941
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 942
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePagePrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePagePrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 946
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 948
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 950
    const/4 v8, 0x1

    move v9, v8

    .line 951
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public initServerInfo(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 604
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 621
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 607
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    instance-of v3, p1, Landroid/os/Bundle;

    if-nez v3, :cond_1

    move v1, v0

    .line 608
    .restart local v1       #bResult:I
    goto :goto_0

    .line 610
    .end local v1           #bResult:I
    :cond_1
    new-instance v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-object v2, p1

    .line 611
    check-cast v2, Landroid/os/Bundle;

    .line 613
    .local v2, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "album_update"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    .line 614
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "isRequestServer"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    .line 615
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 616
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 618
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    const-string v4, "directory_info"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->importDirectories(Ljava/util/ArrayList;)V

    .line 620
    const/4 v0, 0x1

    move v1, v0

    .line 621
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isServiceActive()Z
    .locals 3

    .prologue
    .line 992
    const/4 v0, 0x0

    .line 994
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    move v1, v0

    .line 998
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 997
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 998
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onDestroy]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 573
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 575
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUninitServiceConnection()V

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 578
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 554
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onPause]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 550
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onResume]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 558
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onStart]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onInitServiceConnection()V

    .line 560
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onStart]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 564
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onStop]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUninitServiceConnection()V

    .line 567
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onStop]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public reSearchDevices()V
    .locals 3

    .prologue
    .line 1290
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerServiceCallback()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    if-ne v2, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeChildrenBrowseFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 965
    if-nez p1, :cond_0

    .line 966
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->removeChildrenFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"
    .parameter "nType"

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    move v1, v0

    .line 695
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 646
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    if-nez p4, :cond_2

    .line 648
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 652
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 695
    .restart local v1       #bResult:I
    goto :goto_0

    .line 655
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 658
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 662
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    if-ne v3, p4, :cond_3

    .line 664
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 668
    :try_start_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p3, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    const/4 v0, 0x1

    goto :goto_1

    .line 671
    :catch_1
    move-exception v2

    .line 674
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 678
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v3, 0x2

    if-ne v3, p4, :cond_1

    .line 680
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 684
    :try_start_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p3}, Lcom/htc/dlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 685
    const/4 v0, 0x1

    goto :goto_1

    .line 687
    :catch_2
    move-exception v2

    .line 690
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public requestPhotoDetail(Ljava/lang/String;)Z
    .locals 3
    .parameter "szMediumID"

    .prologue
    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestServerThumbnail(Ljava/lang/String;)V
    .locals 3
    .parameter "serverId"

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1335
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .line 1339
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public scan4AvailableServer()Z
    .locals 5

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1004
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    move v1, v0

    .line 1018
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1009
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_1
    const/4 v0, 0x1

    move v1, v0

    .line 1018
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1011
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 1014
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public scan4MediumItems(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;Z)Z
    .locals 14
    .parameter "pageInfoArg"
    .parameter "bAddVirtualMoreItem"

    .prologue
    .line 1074
    const/4 v6, 0x0

    .line 1075
    .local v6, bResult:Z
    const/4 v8, 0x0

    .line 1076
    .local v8, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 1078
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1080
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: return1..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 1176
    .end local v6           #bResult:Z
    .local v7, bResult:I
    :goto_0
    return v7

    .line 1083
    .end local v7           #bResult:I
    .restart local v6       #bResult:Z
    :cond_0
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    if-nez v12, :cond_1

    .line 1085
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: return2..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 1086
    .restart local v7       #bResult:I
    goto :goto_0

    .line 1088
    .end local v7           #bResult:I
    :cond_1
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: intermediate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 1093
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 1095
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->refreshListFromDatabase(Ljava/lang/String;JJ)V

    .line 1097
    const/4 v6, 0x1

    .line 1100
    if-nez p2, :cond_2

    move v7, v6

    .line 1101
    .restart local v7       #bResult:I
    goto :goto_0

    .line 1103
    .end local v7           #bResult:I
    :cond_2
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: check to add virtual more item"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v10, 0x0

    .line 1106
    .local v10, nCount:I
    const/4 v11, 0x0

    .line 1110
    .local v11, nIndexMid:I
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1112
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 1113
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1115
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: finalizing..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1117
    if-lez v10, :cond_3

    .line 1119
    div-int/lit8 v11, v10, 0x2

    .line 1120
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 1121
    .local v9, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-wide v0, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 1122
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: mid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    .end local v9           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    :cond_3
    const/4 v13, 0x0

    .line 1128
    .local v13, pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v0, -0x2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1130
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1131
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1132
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach bottom"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    move v7, v6

    .line 1176
    .restart local v7       #bResult:I
    goto/16 :goto_0

    .line 1135
    .end local v7           #bResult:I
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1137
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1138
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1139
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1140
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach top"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1142
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 1150
    :cond_7
    const/16 v0, 0xc7

    if-lt v10, v0, :cond_4

    .line 1152
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1153
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1154
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach bottom"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1158
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1161
    :cond_9
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1162
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1163
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1165
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1166
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1167
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach top bottom"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setRegisterID(I)V
    .locals 0
    .parameter "nRegisterID"

    .prologue
    .line 546
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 547
    return-void
.end method

.method public unRegisterServiceCallback()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateLatestPageBottomIndex(J)Z
    .locals 4
    .parameter "bottomIndex"

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v2

    .line 975
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 977
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 981
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {v1, p1, p2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 984
    const/4 v2, 0x1

    goto :goto_0
.end method
