.class public Lcom/discretix/drm/api/DxDrm;
.super Ljava/lang/Object;
.source "DxDrm.java"


# static fields
.field public static final DX_FILE_STATUS_CHANGED:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_FILE_STATUS_CHANGED"

.field public static final DX_HTTP_RESPONSE:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_HTTP_RESPONSE"

.field public static final DX_HTTP_RESPONSE_EXTRA:Ljava/lang/String; = "DX_HTTP_RESPONSE_EXTRA"

.field public static final DX_LA_URL_EXTRA:Ljava/lang/String; = "DX_LA_URL_EXTRA"

.field public static final DX_OBTAIN_LICENSE_INTENT:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_OBTAIN_LICENSE_INTENT"

.field public static final DX_OBTAIN_LICENSE_RESULT:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_OBTAIN_LICENSE_RESULT"

.field public static final DX_RENEW_LICENSE_INTENT:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_RENEW_LICENSE_INTENT"

.field public static final DX_VERIFY_RIGHTS_INTENT:Ljava/lang/String; = "com.discretix.drm.intent.action.DX_VERIFY_RIGHTS_INTENT"

.field public static final DX_VERIFY_RIGHTS_REQ:I = 0x69

.field private static final TAG:Ljava/lang/String; = "DxDrm"

.field private static cachedDrmMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/discretix/drm/api/DxDrm;->cachedDrmMimeTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeUsedAsRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/discretix/drm/api/DxDrm;->canBeUsedAsRingtone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DxDrm"

    const-string v2, "Exception in DxDrm.canBeUsedAsRingtone(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static canBeUsedAsRingtone(Ljava/lang/String;)Z
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    const-wide/16 v5, 0x2080

    invoke-virtual {v1, v5, v6}, Lcom/discretix/drm/api/DxDrmFile;->getFlags(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    const-wide/16 v5, 0x2000

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x80

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    :cond_0
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_1
    const-string v5, "DxDrm"

    const-string v6, "Exception in DxDrm.canBeUsedAsRingtone(): "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_4
    throw v5
.end method

.method public static canBeUsedAsWallpaper(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/discretix/drm/api/DxDrm;->canBeUsedAsWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DxDrm"

    const-string v2, "Exception in DxDrm.canBeUsedAsWallpaper()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static canBeUsedAsWallpaper(Ljava/lang/String;)Z
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    const-wide/32 v5, 0x8080

    invoke-virtual {v1, v5, v6}, Lcom/discretix/drm/api/DxDrmFile;->getFlags(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    const-wide/32 v5, 0x8000

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x80

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    :cond_0
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_1
    const-string v5, "DxDrm"

    const-string v6, "Exception in DxDrm.canBeUsedAsWallpaper(): "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_4
    throw v5
.end method

.method public static canRewind(Landroid/os/ParcelFileDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmCore;->CanRewind(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public static commitRights(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrm;->commitRights(Ljava/lang/String;)V

    return-void
.end method

.method public static commitRights(Landroid/os/ParcelFileDescriptor;Lcom/discretix/drm/api/EDxIntent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/discretix/drm/api/DxDrmCore;->CommitRights(Ljava/io/FileDescriptor;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_RIGHTS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Is Locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read"

    invoke-direct {v3, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static commitRights(Lcom/discretix/drm/api/DxDrmFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    sget-object v6, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/discretix/drm/api/DxDrmFile;->setIntent(Lcom/discretix/drm/api/EDxIntent;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v6, Lcom/discretix/drm/api/EDxConsumptionEvent;->DX_EVENT_START:Lcom/discretix/drm/api/EDxConsumptionEvent;

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DxDrmFile;->handleConsumptionEvent(Lcom/discretix/drm/api/EDxConsumptionEvent;)V

    sget-object v6, Lcom/discretix/drm/api/EDxConsumptionEvent;->DX_EVENT_STOP:Lcom/discretix/drm/api/EDxConsumptionEvent;

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DxDrmFile;->handleConsumptionEvent(Lcom/discretix/drm/api/EDxConsumptionEvent;)V

    return-void

    :catch_0
    move-exception v2

    sget-object v6, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "instant"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    throw v2

    :cond_1
    sget-object v6, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    throw v2

    :cond_2
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/discretix/drm/api/DxDrmFile;->setActiveContentById(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/discretix/drm/api/DxDrmFile;->setIntent(Lcom/discretix/drm/api/EDxIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    throw v2
.end method

.method public static commitRights(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    invoke-static {v1}, Lcom/discretix/drm/api/DxDrm;->commitRights(Lcom/discretix/drm/api/DxDrmFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    throw v2
.end method

.method public static deleteAssets(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const-wide/32 v2, 0xfd6f

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCore;->DxDrm_QuickReset()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_1

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/discretix/drm/api/DxDrmClient;->deleteAssets(J)V

    :cond_1
    return-void
.end method

.method public static getAlbumArt(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COVER_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-static {p0, p1, v0}, Lcom/discretix/drm/api/DxDrm;->getPartByAttribute(Landroid/net/Uri;Landroid/content/Context;Lcom/discretix/drm/api/EDxTextAttribute;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->getDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getFileStatus(Landroid/content/Context;Landroid/net/Uri;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/discretix/drm/api/DxDrm;->getFileStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getFileStatus(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Lcom/discretix/drm/api/DxDrm;->getFileStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getFileStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->getRightsStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_FORWARD_LOCK:Lcom/discretix/drm/api/EDxRightsStatus;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_VALID:Lcom/discretix/drm/api/EDxRightsStatus;
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0
.end method

.method public static getFileStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 9

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/discretix/drm/api/EDxRightsStatus;

    :goto_0
    return-object v5

    :cond_0
    invoke-static {p1}, Lcom/discretix/drm/api/DxDrmMimeTypes;->isPlayReadyContentMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v3, 0x201

    :try_start_0
    invoke-static {p0, v3, v4}, Lcom/discretix/drm/api/DxDrm;->getFlags(Ljava/lang/String;J)J
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    const-wide/16 v5, 0x1

    and-long/2addr v5, v0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/discretix/drm/api/DxDrm;->getFileStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_VALID:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_VALID:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x200

    and-long/2addr v5, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_VALID:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/discretix/drm/api/EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_VALID:Lcom/discretix/drm/api/EDxRightsStatus;

    goto :goto_0
.end method

.method public static getFlags(Landroid/net/Uri;Landroid/content/Context;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/discretix/drm/api/DxDrm;->getFlags(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlags(Ljava/lang/String;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/discretix/drm/api/DxDrmFile;->getFlags(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_0
    return-wide v2

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    throw v4
.end method

.method public static getIcon(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ICON_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-static {p0, p1, v0}, Lcom/discretix/drm/api/DxDrm;->getPartByAttribute(Landroid/net/Uri;Landroid/content/Context;Lcom/discretix/drm/api/EDxTextAttribute;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getLicenseInfo(Landroid/net/Uri;Landroid/content/Context;)[Lcom/discretix/drm/api/DxRightsObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrm;->getLicenseInfo(Ljava/lang/String;)[Lcom/discretix/drm/api/DxRightsObject;

    move-result-object v1

    return-object v1
.end method

.method public static getLicenseInfo(Ljava/lang/String;)[Lcom/discretix/drm/api/DxRightsObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->getLicenseInfo()[Lcom/discretix/drm/api/DxRightsObject;

    move-result-object v2

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    return-object v2
.end method

.method public static getLyrics(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LYRICS_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-static {p0, p1, v0}, Lcom/discretix/drm/api/DxDrm;->getPartByAttribute(Landroid/net/Uri;Landroid/content/Context;Lcom/discretix/drm/api/EDxTextAttribute;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getPartByAttribute(Landroid/net/Uri;Landroid/content/Context;Lcom/discretix/drm/api/EDxTextAttribute;)[B
    .locals 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.email.attachmentprovider"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Landroid/content/Context;Landroid/net/Uri;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    if-eqz v1, :cond_3

    const-string v8, "cid:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, p1, v1}, Lcom/discretix/drm/api/DxDrm;->openFile(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_2
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    :try_start_6
    throw v8
    :try_end_6
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/discretix/drm/api/exceptions/DrmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Lcom/discretix/drm/api/exceptions/DrmException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v9

    goto :goto_4

    :catch_6
    move-exception v8

    goto :goto_1

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :catch_7
    move-exception v4

    move-object v6, v7

    goto :goto_2
.end method

.method public static getTextAttribute(Ljava/lang/String;Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    return-object v0
.end method

.method public static handleConsumptionEvent(Landroid/os/ParcelFileDescriptor;Lcom/discretix/drm/api/EDxConsumptionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/discretix/drm/api/DxDrmCore;->ConsumptionEvent(Ljava/io/FileDescriptor;Lcom/discretix/drm/api/EDxConsumptionEvent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_RIGHTS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Is Locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static isDrmContent(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrm;->isDrmContent(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDrmContent(Landroid/os/ParcelFileDescriptor;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/discretix/drm/api/DxDrmClient;->getContentInfo(Landroid/os/ParcelFileDescriptor;)Lcom/discretix/drm/api/DxContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxContentInfo;->getDrmScheme()Lcom/discretix/drm/api/EDxDrmScheme;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmScheme;->DX_SCHEME_UNKNOWN:Lcom/discretix/drm/api/EDxDrmScheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDrmContent(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/discretix/drm/api/DxDrmClient;->getContentInfo(Ljava/lang/String;)Lcom/discretix/drm/api/DxContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxContentInfo;->getDrmScheme()Lcom/discretix/drm/api/EDxDrmScheme;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmScheme;->DX_SCHEME_UNKNOWN:Lcom/discretix/drm/api/EDxDrmScheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDrmMessage(Landroid/os/ParcelFileDescriptor;)Z
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DxDrmClient;->detectMimeType(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "application/vnd.oma.drm.message"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isDrmMimeType(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v2, Lcom/discretix/drm/api/DxDrm;->cachedDrmMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/discretix/drm/api/DxDrmClient;->isDrmMimeType(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/discretix/drm/api/DxDrm;->cachedDrmMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static openFile(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static openFile(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static openFile(Landroid/net/Uri;Landroid/content/Context;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static openFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/discretix/drm/api/DxDrm;->openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static openFile(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .locals 5

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/discretix/drm/api/DxDrmClient;->getContentInfo(Ljava/lang/String;)Lcom/discretix/drm/api/DxContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxContentInfo;->getDrmScheme()Lcom/discretix/drm/api/EDxDrmScheme;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmScheme;->DX_SCHEME_UNKNOWN:Lcom/discretix/drm/api/EDxDrmScheme;

    if-eq v2, v3, :cond_1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/DxDrm/fuse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/DxDrm/fuse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final prepareForSuperDistribution(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Lcom/discretix/drm/api/exceptions/DrmFileIsNotForwardableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/discretix/drm/api/DxDrmUtils;->isDrmAwareAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/prepareToSend"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public static final prepareForSuperDistribution(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmException;,
            Lcom/discretix/drm/api/exceptions/DrmFileIsNotForwardableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/discretix/drm/api/EDxFileOpenMode;->DX_OPEN_FOR_READWRITE:Lcom/discretix/drm/api/EDxFileOpenMode;

    invoke-virtual {v0, p0, v4}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v1

    const-wide/32 v4, 0x10000

    invoke-virtual {v1, v4, v5}, Lcom/discretix/drm/api/DxDrmFile;->getFlags(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmFileIsNotForwardableException;

    invoke-direct {v4, p0}, Lcom/discretix/drm/api/exceptions/DrmFileIsNotForwardableException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->prepareForSuperDistribution()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_2
    throw v4
.end method

.method public static renewLicense(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RI_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-static {v0, v5}, Lcom/discretix/drm/api/DxDrm;->getTextAttribute(Ljava/lang/String;Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v1, v0

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.discretix.drm.intent.action.DX_RENEW_LICENSE_INTENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "FileName"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final setDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmClient;->setDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;J)V

    return-void
.end method

.method public static verifyRights(Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v1

    return v1
.end method

.method public static verifyRights(Landroid/net/Uri;Landroid/app/Activity;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v1

    return v1
.end method

.method public static verifyRights(Landroid/net/Uri;Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1, v1, p2}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z

    move-result v1

    return v1
.end method

.method public static verifyRights(Landroid/net/Uri;Landroid/content/Context;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z

    move-result v1

    return v1
.end method

.method public static verifyRights(Landroid/net/Uri;Landroid/content/Context;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z

    move-result v1

    return v1
.end method

.method public static verifyRights(Lcom/discretix/drm/api/DxDrmFile;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {v6}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmFile;->verifyRightsFromFD(Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;Landroid/net/Uri;Z)Lcom/discretix/drm/api/EDxVerifyStatus;

    move-result-object v7

    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-ne v7, v0, :cond_1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/app/Activity;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    sget-object v4, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v2

    sget-object v6, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v2, v6}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v7

    invoke-virtual {v2, p1, v6, v7, p2}, Lcom/discretix/drm/api/DxDrmFile;->verifyRights(Landroid/app/Activity;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;Z)Lcom/discretix/drm/api/EDxVerifyStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    sget-object v6, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-ne v4, v6, :cond_4

    :cond_2
    :goto_0
    return v5

    :catch_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    throw v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z

    move-result v0

    return v0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/content/Context;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/discretix/drm/api/DxDrm;->verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z

    move-result v0

    return v0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    sget-object v9, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v7, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v0, v1}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v3

    move-object v1, p1

    move-object v2, p4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmFile;->verifyRights(Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;ZZ)Lcom/discretix/drm/api/EDxVerifyStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-ne v9, v1, :cond_4

    move v1, v10

    :goto_0
    return v1

    :catch_0
    move-exception v8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_2
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    throw v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyRights(Ljava/lang/String;Landroid/content/Context;ZZLcom/discretix/drm/api/EDxAutoMode;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v10, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v8, p0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v0, v1}, Lcom/discretix/drm/api/DxDrmFile;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v3

    move-object v1, p1

    move-object v2, p4

    move v4, p2

    move v5, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmFile;->verifyRights(Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;ZZLjava/lang/String;)Lcom/discretix/drm/api/EDxVerifyStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmNotProtectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-ne v10, v1, :cond_4

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception v9

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    throw v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
