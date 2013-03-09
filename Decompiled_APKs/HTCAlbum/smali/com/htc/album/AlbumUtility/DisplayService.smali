.class public Lcom/htc/album/AlbumUtility/DisplayService;
.super Ljava/lang/Object;
.source "DisplayService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final VIDEO_2D:I = 0x2

.field public static final VIDEO_3D_LANDSCAPE:I = 0x0

.field public static final VIDEO_3D_PORTRAIT:I = 0x1

.field public static final VIDEO_3D_SWITCH_2D:I = 0x2

.field public static final VIDEO_3D_SWITCH_3D:I = 0x3

.field public static final VIDEO_3D_SWITCH_NONE:I = 0x0

.field public static final VIDEO_3D_SWITCH_SBS:I = 0x4

.field public static final VIDEO_3D_SWITCH_SBSRL:I = 0x6

.field public static final VIDEO_3D_SWITCH_TB:I = 0x5

.field public static final VIDEO_IS_2D_MODE:I = 0x1

.field public static final VIDEO_IS_3D_MODE:I = 0x2

.field public static final VIDEO_NONE_MODE:I

.field public static final mDisplayService:Landroid/os/IDisplayService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/album/AlbumUtility/DisplayService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    .line 11
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3DMode()I
    .locals 5

    .prologue
    .line 43
    const/4 v1, 0x2

    .line 44
    .local v1, mode:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    .line 46
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return v1

    .line 50
    :cond_0
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v2, :cond_1

    .line 52
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkDisplayService]: mDisplayService is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    invoke-interface {v2}, Landroid/os/IDisplayService;->Get3DMode()I

    move-result v1

    .line 58
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is3DMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/album/AlbumUtility/DisplayService;->get3DMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setStereoDisplayMode(I)V
    .locals 4
    .parameter "displayMode"

    .prologue
    .line 66
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v1, :cond_1

    .line 70
    sget-object v1, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkDisplayService]: mDisplayService is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    sget-object v1, Lcom/htc/album/AlbumUtility/DisplayService;->mDisplayService:Landroid/os/IDisplayService;

    const-string v2, "Gallery"

    invoke-interface {v1, p0, v2}, Landroid/os/IDisplayService;->setStereoDisplayMode(ILjava/lang/String;)I

    .line 76
    sget-object v1, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setStereoDisplayMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/htc/album/AlbumUtility/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setStereoDisplayMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
