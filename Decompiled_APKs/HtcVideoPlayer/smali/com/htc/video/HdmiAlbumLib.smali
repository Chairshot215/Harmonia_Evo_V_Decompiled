.class public Lcom/htc/video/HdmiAlbumLib;
.super Ljava/lang/Object;
.source "HdmiAlbumLib.java"


# static fields
.field public static final APPNAME:Ljava/lang/String; = "HTCAlbum"

.field public static final TAG:Ljava/lang/String; = "HTCAlbum"

.field public static final _ACTIVITYSTATUS_CREATE:I = 0x0

.field public static final _ACTIVITYSTATUS_DESTROY:I = 0x5

.field public static final _ACTIVITYSTATUS_HDMIPLUGIN:I = 0x7

.field public static final _ACTIVITYSTATUS_HDMIPLUGOUT:I = 0x8

.field public static final _ACTIVITYSTATUS_PAUSE:I = 0x3

.field public static final _ACTIVITYSTATUS_PLAYSLIDESHOW:I = 0x6

.field public static final _ACTIVITYSTATUS_RESUME:I = 0x2

.field public static final _ACTIVITYSTATUS_START:I = 0x1

.field public static final _ACTIVITYSTATUS_STOP:I = 0x4

.field private static mDRMProhibit:Z = false

.field private static mHDMI:Z = false

.field private static mHdmiLib:Lcom/htc/video/HdmiAlbumLib; = null

.field private static mInit:Z = false

.field public static final mirror:I = 0x0

.field public static final presentation:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    .line 21
    sput-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mInit:Z

    .line 23
    sput-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mDRMProhibit:Z

    .line 31
    new-instance v0, Lcom/htc/video/HdmiAlbumLib;

    invoke-direct {v0}, Lcom/htc/video/HdmiAlbumLib;-><init>()V

    sput-object v0, Lcom/htc/video/HdmiAlbumLib;->mHdmiLib:Lcom/htc/video/HdmiAlbumLib;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private CloseHDMI()V
    .locals 9

    .prologue
    .line 193
    :try_start_0
    const-string v6, "display"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v4

    .line 195
    .local v4, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 196
    .local v1, b:Z
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v2

    .line 198
    .local v2, c:Z
    if-nez v1, :cond_1

    .line 221
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v1       #b:Z
    .restart local v2       #c:Z
    .restart local v4       #hdmiService:Landroid/os/IDisplayService;
    :cond_1
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    if-eqz v2, :cond_0

    .line 208
    :cond_2
    const/4 v6, 0x0

    const-string v7, "HTCAlbum"

    invoke-interface {v4, v6, v7}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I

    move-result v0

    .line 210
    .local v0, a:I
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 211
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0           #a:I
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, s:Ljava/lang/String;
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[exception][closeHDMI]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CloseHdmiDisable()V
    .locals 9

    .prologue
    .line 252
    :try_start_0
    const-string v6, "display"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v4

    .line 254
    .local v4, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 255
    .local v1, b:Z
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v2

    .line 259
    .local v2, c:Z
    const-string v6, "HTCAlbum"

    invoke-interface {v4, v6}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, a:I
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 262
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0           #a:I
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v3

    .line 268
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, s:Ljava/lang/String;
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[exception][bitmapHDMI]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetMgr()Lcom/htc/video/HdmiAlbumLib;
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->Init()V

    .line 28
    :cond_0
    sget-object v0, Lcom/htc/video/HdmiAlbumLib;->mHdmiLib:Lcom/htc/video/HdmiAlbumLib;

    return-object v0
.end method

.method public static Init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    sput-boolean v2, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    .line 65
    :cond_1
    sput-boolean v2, Lcom/htc/video/HdmiAlbumLib;->mInit:Z

    .line 66
    return-void
.end method

.method private OpenHDMI()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 161
    :try_start_0
    const-string v6, "display"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v4

    .line 163
    .local v4, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 164
    .local v1, b:Z
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v2

    .line 170
    .local v2, c:Z
    if-ne v2, v7, :cond_0

    .line 171
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OpenHDMI]-hdmi is open and eanble="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :goto_0
    return-void

    .line 175
    .restart local v1       #b:Z
    .restart local v2       #c:Z
    .restart local v4       #hdmiService:Landroid/os/IDisplayService;
    :cond_0
    const/4 v6, 0x1

    const-string v7, "HTCAlbum"

    invoke-interface {v4, v6, v7}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I

    move-result v0

    .line 177
    .local v0, a:I
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 178
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0           #a:I
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :catch_0
    move-exception v3

    .line 184
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, s:Ljava/lang/String;
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OpenHDMI][exception]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ShowHdmiDisable()V
    .locals 9

    .prologue
    .line 227
    :try_start_0
    const-string v6, "display"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v4

    .line 229
    .local v4, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 230
    .local v1, b:Z
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v2

    .line 234
    .local v2, c:Z
    const-string v6, "HTCAlbum"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, a:I
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v1

    .line 237
    invoke-interface {v4}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0           #a:I
    .end local v1           #b:Z
    .end local v2           #c:Z
    .end local v4           #hdmiService:Landroid/os/IDisplayService;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v3

    .line 243
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, s:Ljava/lang/String;
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[exception][bitmapHDMI]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DisableTVHdmi()V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mDRMProhibit:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/htc/video/HdmiAlbumLib;->CloseHDMI()V

    .line 140
    invoke-direct {p0}, Lcom/htc/video/HdmiAlbumLib;->ShowHdmiDisable()V

    goto :goto_0
.end method

.method public EnanbleTVHdmi()V
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mDRMProhibit:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/htc/video/HdmiAlbumLib;->CloseHdmiDisable()V

    .line 155
    invoke-direct {p0}, Lcom/htc/video/HdmiAlbumLib;->OpenHDMI()V

    goto :goto_0
.end method

.method public IsDMRProhibit()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mDRMProhibit:Z

    return v0
.end method

.method public IsHDMIConnected()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 106
    sget-boolean v4, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    if-nez v4, :cond_0

    .line 123
    :goto_0
    return v0

    .line 111
    :cond_0
    :try_start_0
    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v2

    .line 113
    .local v2, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v2}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    .local v0, b:Z
    goto :goto_0

    .line 117
    .end local v0           #b:Z
    .end local v2           #hdmiService:Landroid/os/IDisplayService;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, s:Ljava/lang/String;
    const-string v4, "HTCAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IsHDMIConnected][exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsHDMIConnectedAndEnable()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 79
    sget-boolean v7, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    if-nez v7, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v5

    .line 83
    :cond_1
    :try_start_0
    const-string v7, "display"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v3

    .line 85
    .local v3, hdmiService:Landroid/os/IDisplayService;
    invoke-interface {v3}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v0

    .line 86
    .local v0, b:Z
    invoke-interface {v3}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    .local v1, c:Z
    if-ne v6, v0, :cond_0

    if-ne v6, v1, :cond_0

    move v5, v6

    .line 91
    goto :goto_0

    .line 94
    .end local v0           #b:Z
    .end local v1           #c:Z
    .end local v3           #hdmiService:Landroid/os/IDisplayService;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, s:Ljava/lang/String;
    const-string v6, "HTCAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IsHDMIConnectedAndEnable][exception]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsHDMIDevice()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/htc/video/HdmiAlbumLib;->mHDMI:Z

    return v0
.end method

.method public OnActivityStatusChange(I)I
    .locals 1
    .parameter "nACTIVITYSTATUS"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
