.class public Lcom/htc/music/util/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
    }
.end annotation


# static fields
.field public static final DRMV2_MEDIA_ERROR_LICENSE_EXPIRED:I = 0x12c

.field public static final DRMV2_VERIFY_RIGHTS_REQ:I = 0x0

.field public static final DRM_V1:I = 0x1

.field public static final DRM_V2:I = 0x2

.field public static final DRM_VER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DrmUtils]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DRMV2_CanBeUsedAsRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static DRMV2_CanRewind(Landroid/media/MediaPlayer;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static DRMV2_CanRewind(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static DRMV2_GetFileStatus(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
    .locals 1

    sget-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    return-object v0
.end method

.method public static DRMV2_GetFileStatus(Ljava/lang/String;)Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
    .locals 1

    sget-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    return-object v0
.end method

.method public static DRMV2_GetFlags(Landroid/net/Uri;Landroid/content/Context;J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static DRMV2_GetFlags(Ljava/lang/String;J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static DRMV2_IsForwardable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static DRMV2_SetDataSourceByPath(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static DRMV2_VerifyStatus(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
