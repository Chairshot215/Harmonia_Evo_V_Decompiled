.class public Lcom/htc/video/Common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_DLNA_BROWSE_DMS:Ljava/lang/String; = "com.htc.album.action.DLNA_BROWSE_DMS"

.field public static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_DLNA:Z = false

.field public static final DISABLE_DRM_FL_ALERT_MESSAGE:Z = true

.field public static final ENABLE_WMDRM:Z = true

#the value of this static final field might be set in the static constructor
.field public static final FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FOR_CMCC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final HAS_3D_BARRIER:Z = false

.field public static final HAS_HIGH_SPEED_SUPPORT:Z = true

.field public static final INTENT_ACTION_HTC_FMRADIO:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field public static final INTENT_ACTION_HTC_MUSIC:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final INTENT_KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final INTENT_VALUE_PAUSE:Ljava/lang/String; = "pause"

.field private static final IS_DEBUG:Z = true

.field public static final IS_PORT_VIDEO_SUPPORT:Z = true

#the value of this static final field might be set in the static constructor
.field public static final IS_SOUND_EFFECT_VIDEO_SUPPORT:Z = false

.field public static final KEY_PLAYBACK_MODE:Ljava/lang/String; = "playback_mode"

.field public static final KEY_TAB_DEFAULT:Ljava/lang/String; = "tab_default"

.field private static final LOG_MEM:Ljava/lang/String; = "AlbumMemUsageTrace"

.field public static final MIME_TYPE_3GP_2D:Ljava/lang/String; = "video/3gpp"

.field public static final MIME_TYPE_3GP_3D:Ljava/lang/String; = "video/3gpp-3d"

.field public static final MIME_TYPE_MP4_2D:Ljava/lang/String; = "video/mp4"

.field public static final MIME_TYPE_MP4_3D:Ljava/lang/String; = "video/mp4-3d"

.field public static final MSG_INTENT_TRIMAPP:I = 0x13ba

.field public static final MSG_INTENT_VIDEOACT:I = 0x13bb

.field public static final MSG_PICK_DMR:I = 0x1398

.field public static final SOUND_EFFECT_VIDEO_BEATS:I = 0x8

.field public static final SOUND_EFFECT_VIDEO_DOLBY:I = 0x2

.field public static final SOUND_EFFECT_VIDEO_HTC51:I = 0x4

.field public static final SOUND_EFFECT_VIDEO_SRS:I = 0x1

.field public static final SOUND_EFFECT_VIDEO_UNKNOWN:I = -0x1

.field public static TRIMCHECKINIT:Z = false

.field public static TRIMEXISTS:Z = false

.field public static final VALUE_PLAYBACK_MODE_2D:I = 0x1

.field public static final VALUE_PLAYBACK_MODE_3D:I = 0x2

.field public static final VALUE_PLAYBACK_MODE_CROP:I = 0x1

.field public static final VALUE_PLAYBACK_MODE_FIT:I = 0x0

.field public static final VALUE_PLAYBACK_MODE_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final VIDEO_ORIENTATION_FREE:Z = false

.field public static final WMDRM_MIMETYPE:Ljava/lang/String; = "video/x-wmv-drm"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x41

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    .line 68
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_4

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/video/Common/Constants;->FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z

    .line 76
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/video/Common/Constants;->FOR_CMCC_PROJECT:Z

    .line 78
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x96

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdc

    if-ne v0, v3, :cond_6

    :cond_1
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    .line 86
    sget-boolean v0, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/htc/video/Common/Constants;->VIDEO_ORIENTATION_FREE:Z

    .line 101
    invoke-static {}, Lcom/htc/video/Common/Constants;->getVideoEffectSupport()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/htc/video/Common/Constants;->IS_SOUND_EFFECT_VIDEO_SUPPORT:Z

    .line 154
    sput-boolean v1, Lcom/htc/video/Common/Constants;->TRIMCHECKINIT:Z

    .line 155
    sput-boolean v1, Lcom/htc/video/Common/Constants;->TRIMEXISTS:Z

    return-void

    :cond_3
    move v0, v1

    .line 58
    goto :goto_0

    :cond_4
    move v0, v1

    .line 68
    goto :goto_1

    :cond_5
    move v0, v1

    .line 76
    goto :goto_2

    :cond_6
    move v0, v1

    .line 78
    goto :goto_3

    :cond_7
    move v0, v2

    .line 86
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemTraceTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "AlbumMemUsageTrace"

    return-object v0
.end method

.method public static getSeekbarWidth(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, width:I
    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 145
    :cond_0
    const/16 v0, 0x1bf

    .line 151
    return v0
.end method

.method public static getVideoEffectSupport()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, -0x1

    .line 90
    .local v0, type:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    .line 96
    const/4 v0, 0x5

    .line 99
    return v0
.end method

.method public static is3DVideoSupport(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    const-string v1, "video/mp4-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "video/3gpp-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public static isHighSpeedVideoSupport(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_1

    .line 51
    const-string v1, "video/mp4-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 55
    :cond_1
    return v0
.end method

.method public static isTrimExists(Landroid/app/Activity;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    sget-boolean v3, Lcom/htc/video/Common/Constants;->TRIMCHECKINIT:Z

    if-eqz v3, :cond_2

    .line 163
    sget-boolean v2, Lcom/htc/video/Common/Constants;->TRIMEXISTS:Z

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 167
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, info:Landroid/content/pm/ActivityInfo;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_1
    if-eqz v0, :cond_3

    .line 182
    sput-boolean v5, Lcom/htc/video/Common/Constants;->TRIMEXISTS:Z

    .line 184
    :cond_3
    sput-boolean v5, Lcom/htc/video/Common/Constants;->TRIMCHECKINIT:Z

    .line 186
    const/4 v0, 0x0

    .line 188
    sget-boolean v2, Lcom/htc/video/Common/Constants;->TRIMEXISTS:Z

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static memUsageTrace(Ljava/lang/String;)V
    .locals 5
    .parameter "strFunction"

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 118
    .local v0, runtime:Ljava/lang/Runtime;
    const-string v1, "AlbumMemUsageTrace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VM free memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "AlbumMemUsageTrace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VM max memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "AlbumMemUsageTrace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VM total memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "AlbumMemUsageTrace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Externally-allocated bytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getExternalBytesAllocated()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
