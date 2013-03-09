.class public Lcom/htc/opensense/album/util/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/DrmManager$DRMActionActivityBroadcastReceiver;,
        Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;,
        Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;,
        Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;,
        Lcom/htc/opensense/album/util/DrmManager$Columns;
    }
.end annotation


# static fields
.field public static final CONSTRAINT_COUNT:I = 0x0

.field public static final CONSTRAINT_DATE:I = 0x2

.field public static final CONSTRAINT_INTERVAL:I = 0x1

.field public static final DRM_REQ_SHOW_GIF_ANIMATED:I = 0x50

.field public static final DRM_REQ_SHOW_RIGHT:I = 0x30

.field public static final DRM_RESULT_CAN_DECODE:I = 0x10

.field public static final DRM_RESULT_CAN_NOT_DECODE:I = 0x20

.field public static final DRM_RESULT_DOWNLOAD_RIGHT:I = 0x60

.field public static final DRM_RESULT_NON_CHECK:I = 0x40

.field public static final DRM_VERIFY_RESULT_CODE:I = -0x1000

.field public static final REQUEST_CONTENT_IMAGE:I = 0x0

.field public static final REQUEST_CONTENT_UNKNOWN:I = -0x1

.field public static final REQUEST_CONTENT_VIDEO:I = 0x1

.field public static final STATE_DATE_NOT_SYNC:I = 0x3

.field public static final STATE_ERR:I = -0x1

.field public static final STATE_EXPIRE:I = 0x2

.field public static final STATE_NEED_DOWNLOAD_RIGHT:I = 0x1

.field public static final STATE_NO_RIGHT_ISSURE:I = -0x2

.field public static final STATE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmManager"

.field private static mDownloadUri:Landroid/net/Uri;

.field private static mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

.field private static mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

.field private static mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

.field private static mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private static mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 73
    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 74
    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 75
    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    .line 1649
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/util/DrmManager;->mStatus:I

    .line 1650
    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1672
    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object p0
.end method

.method static synthetic access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-object v0
.end method

.method public static consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1233
    const-string v0, "DrmManager"

    const-string v1, "consume image right"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method public static consumeDrmVideoRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1258
    const-string v0, "DrmManager"

    const-string v1, "consume video right"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "ctx"
    .parameter "message"

    .prologue
    .line 324
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01d3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 3
    .parameter "ctx"
    .parameter "message"
    .parameter "mediaType"
    .parameter "listener"

    .prologue
    .line 991
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01d3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01da

    new-instance v2, Lcom/htc/opensense/album/util/DrmManager$5;

    invoke-direct {v2, p3, p2}, Lcom/htc/opensense/album/util/DrmManager$5;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01db

    new-instance v2, Lcom/htc/opensense/album/util/DrmManager$4;

    invoke-direct {v2, p3}, Lcom/htc/opensense/album/util/DrmManager$4;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/opensense/album/util/DrmManager$3;

    invoke-direct {v1, p3}, Lcom/htc/opensense/album/util/DrmManager$3;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1030
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0}, Lcom/htc/opensense/album/util/DrmManager;->showDlg(Lcom/htc/widget/HtcAlertDialog;)V

    .line 1032
    return-void
.end method

.method public static deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 2
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 1264
    const/4 v0, -0x1

    .line 1272
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deleteDrmFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter "content"
    .parameter "uri"

    .prologue
    .line 1276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1277
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lcom/htc/opensense/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public static dismissAllDialog()V
    .locals 1

    .prologue
    .line 1301
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 1303
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1304
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1307
    :cond_0
    return-void
.end method

.method public static getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "image"
    .parameter "constraints"

    .prologue
    .line 964
    const/4 v0, -0x1

    return v0
.end method

.method public static getCurrentDrmVideoUri(Lcom/htc/opensense/album/util/ImageManager$IImage;)Landroid/content/Intent;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 1153
    if-nez p0, :cond_0

    .line 1154
    const-string v9, "DrmManager"

    const-string v10, "you haven\'t set current drm file"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :goto_0
    return-object v2

    .line 1157
    :cond_0
    instance-of v9, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;

    if-nez v9, :cond_1

    .line 1158
    const-string v9, "DrmManager"

    const-string v10, "your current image is not video type"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    .line 1162
    check-cast v8, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;

    .line 1163
    .local v8, videoItem:Lcom/htc/opensense/album/util/ImageManager$DrmVideo;
    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v4

    .line 1164
    .local v4, nDataOffset:I
    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, strFilePath:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, contentId:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v0

    .line 1167
    .local v0, boundary:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&drm_header_len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&drm_trailor_len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sd_content_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1168
    .local v7, uriForPV:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1170
    .local v5, newUri:Landroid/net/Uri;
    const-string v9, "DrmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI for PV:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mimeType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1067
    const-string v0, "MM-dd-yyyy"

    .line 1069
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1072
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1075
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hh:mm:ss a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 605
    const/4 v2, 0x0

    .line 606
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 608
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 613
    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 617
    :goto_1
    return-object v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 614
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method public static getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1184
    const/4 v1, 0x0

    .line 1185
    .local v1, strFilePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1207
    .local v0, is:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 1208
    const-string v2, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRM image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " input stream is NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :cond_0
    return-object v0
.end method

.method public static getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "state"
    .parameter "uri"
    .parameter "filePath"
    .parameter "title"
    .parameter "mimeType"
    .parameter "drmType"

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_0

    .line 543
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 530
    :pswitch_1
    invoke-static {p0, p2, p4, p5, p6}, Lcom/htc/opensense/album/util/DrmManager;->getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :pswitch_2
    invoke-static {p0, p3, p6}, Lcom/htc/opensense/album/util/DrmManager;->getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-static {p0}, Lcom/htc/opensense/album/util/DrmManager;->getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 540
    :pswitch_4
    invoke-static {p0, p3}, Lcom/htc/opensense/album/util/DrmManager;->getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getDrmMessageDlg(Landroid/content/Context;ILcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 358
    const-string v0, "DrmManager"

    const-string v1, "getDrmMessageDlg deprecated."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 6
    .parameter "ctx"
    .parameter "uri"
    .parameter "appearDialog"

    .prologue
    const/4 v5, 0x0

    .line 1519
    const-string v2, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check DRM state of content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    sput v5, Lcom/htc/opensense/album/util/DrmManager;->mStatus:I

    .line 1521
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1542
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, -0x1

    .line 1646
    .local v1, type:I
    return v5
.end method

.method public static getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1216
    const/4 v1, 0x0

    .line 1217
    .local v1, strFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1228
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDrmVideoFrame(Lcom/htc/opensense/album/util/ImageManager$DrmVideo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "image"

    .prologue
    .line 173
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 174
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 175
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 176
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v4

    if-nez v4, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 181
    if-nez v2, :cond_0

    .line 182
    const/4 v4, 0x0

    .line 198
    :goto_0
    return-object v4

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 192
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 196
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    move-object v4, v3

    .line 198
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getDrmVideoFrame] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public static getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "dataPath"
    .parameter "offset"
    .parameter "contentId"
    .parameter "contentBoundary"

    .prologue
    .line 1177
    move-object v0, p0

    .line 1178
    .local v0, strFilePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&drm_header_len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sd_content_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, uriForPV:Ljava/lang/String;
    const-string v2, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI for PV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "filePath"
    .parameter "drmType"

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 599
    .local v0, message:Ljava/lang/String;
    const v1, 0x20c01ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 601
    return-object v0
.end method

.method private static getMediaType(Ljava/lang/String;)I
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 338
    const/4 v1, -0x1

    .line 339
    .local v1, mediaType:I
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 340
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v1, 0x0

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    if-nez v0, :cond_0

    .line 347
    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "filePath"

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 623
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 624
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 628
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    :cond_0
    return-object v1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "drmType"

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 589
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmContent(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1281
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1283
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1284
    const-string v3, "DrmManager"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_0
    const-string v3, "DrmManager"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1286
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1287
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1289
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 1290
    const-string v3, "DrmManager"

    const-string v4, "network is available"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const/4 v3, 0x1

    goto :goto_0

    .line 1288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isPureFL(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public static onEnd()V
    .locals 1

    .prologue
    .line 1663
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1664
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1667
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1669
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->unregisterRenewRightListener()V

    .line 1670
    return-void
.end method

.method public static registerRenewRightListener(Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1652
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    if-eq v0, p0, :cond_0

    .line 1653
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    .line 1655
    :cond_0
    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    .line 1656
    return-void
.end method

.method public static renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 1468
    invoke-static {p0}, Lcom/htc/opensense/album/util/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1471
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1473
    .local v1, rc:Landroid/content/res/Resources;
    const v2, 0x20c0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    .end local v1           #rc:Landroid/content/res/Resources;
    :goto_0
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    if-eqz v2, :cond_0

    .line 1479
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    invoke-interface {v2}, Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1504
    :cond_0
    :goto_1
    return-void

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show toast failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_2

    .line 1486
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1488
    :cond_2
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 1489
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1490
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1491
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/htc/opensense/album/util/DrmManager$7;

    invoke-direct {v3}, Lcom/htc/opensense/album/util/DrmManager$7;-><init>()V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1501
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1503
    const-string v2, "DrmManager"

    const-string v3, "acquire drm rights."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setButtons(Lcom/htc/widget/HtcAlertDialog;[Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)V
    .locals 7
    .parameter "dialog"
    .parameter "buttons"

    .prologue
    .line 332
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 333
    .local v1, button:Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;
    #getter for: Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->buttonPosition:I
    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->access$000(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)I

    move-result v4

    #getter for: Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->title:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->access$100(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->access$200(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v1           #button:Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;
    :cond_0
    return-void
.end method

.method private static setupButtons(Landroid/content/Intent;II)V
    .locals 3
    .parameter "intent"
    .parameter "state"
    .parameter "drmType"

    .prologue
    const/16 v2, 0x20

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    :pswitch_0
    return-void

    .line 674
    :pswitch_1
    const-string v0, "btn_count"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string v0, "btn_positive_msg"

    const v1, 0x20c01da

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string v0, "btn_negative_msg"

    const v1, 0x20c01db

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 688
    :pswitch_2
    const-string v0, "btn_count"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    const-string v0, "btn_positive_msg"

    const v1, 0x20c01d5

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 695
    :pswitch_3
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 907
    const/4 v2, 0x0

    .line 908
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 910
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 915
    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 921
    :goto_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01d3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01da

    new-instance v5, Lcom/htc/opensense/album/util/DrmManager$1;

    invoke-direct {v5, p1}, Lcom/htc/opensense/album/util/DrmManager$1;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 916
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 917
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method private static showDlg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dlg"

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 133
    :cond_0
    return-void
.end method

.method public static showDrmAlertActivity(Landroid/content/Context;ILcom/htc/opensense/album/util/ImageManager$IImage;I)V
    .locals 10
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "orientation"

    .prologue
    .line 636
    move-object v7, p2

    check-cast v7, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    .line 637
    .local v7, drmContent:Lcom/htc/opensense/album/util/ImageManager$DrmMedia;
    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 638
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, mimeType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    .local v6, drmType:I
    move-object v0, p0

    move v1, p1

    .line 663
    invoke-static/range {v0 .. v6}, Lcom/htc/opensense/album/util/DrmManager;->getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 664
    .local v9, message:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 665
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v8, intent:Landroid/content/Intent;
    invoke-static {v8, p1, v6}, Lcom/htc/opensense/album/util/DrmManager;->setupButtons(Landroid/content/Intent;II)V

    .line 667
    invoke-static {p0, v9, p3, v8}, Lcom/htc/opensense/album/util/DrmManager;->startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 669
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static showDrmContentDetails(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "image"

    .prologue
    .line 152
    return-void
.end method

.method public static showExpireMessage(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 10
    .parameter "ctx"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 1313
    instance-of v7, p0, Landroid/app/Activity;

    if-nez v7, :cond_0

    .line 1314
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Context must be Activity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1316
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 1317
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 1318
    .local v0, drmType:I
    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 1319
    .local v5, mimeType:Ljava/lang/String;
    const/4 v4, -0x1

    .line 1321
    .local v4, mediaType:I
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    .line 1322
    .local v2, fileType:I
    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1323
    const/4 v4, 0x0

    .line 1336
    :cond_1
    :goto_0
    move v1, v4

    .line 1341
    .local v1, fileMediaType:I
    const v7, 0x20c01ed

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1445
    .local v6, msg:Ljava/lang/String;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20c01d3

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20c01d5

    new-instance v9, Lcom/htc/opensense/album/util/DrmManager$6;

    invoke-direct {v9, p2}, Lcom/htc/opensense/album/util/DrmManager$6;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1465
    return-void

    .line 1324
    .end local v1           #fileMediaType:I
    .end local v6           #msg:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1325
    const/4 v4, 0x1

    goto :goto_0

    .line 1327
    :cond_3
    if-nez v2, :cond_1

    .line 1329
    const-string v7, "image/bmp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1330
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;ILcom/htc/opensense/album/util/ImageManager$IImage;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 11
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 701
    instance-of v9, p0, Landroid/app/Activity;

    if-nez v9, :cond_0

    .line 702
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Context must be Activity"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 704
    :cond_0
    const/4 v9, 0x2

    if-eq p1, v9, :cond_1

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    .line 705
    :cond_1
    const-string v9, "DrmManager"

    const-string v10, "show expiration dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-static {p0, p2, p3}, Lcom/htc/opensense/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    .line 818
    :cond_2
    :goto_0
    return-void

    .line 710
    .restart local p2
    :cond_3
    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    .line 711
    const-string v9, "DrmManager"

    const-string v10, "show date not sync dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {p0, p3}, Lcom/htc/opensense/album/util/DrmManager;->showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 716
    :cond_4
    const/4 v9, -0x2

    if-ne p1, v9, :cond_5

    .line 717
    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, filePath:Ljava/lang/String;
    const-string v9, "DrmManager"

    const-string v10, "show no issuer dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-static {p0, v2, p3}, Lcom/htc/opensense/album/util/DrmManager;->showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 730
    .end local v2           #filePath:Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_2

    .line 731
    const-string v9, "DrmManager"

    const-string v10, "show confirmed decrypt dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, strTitle:Ljava/lang/String;
    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, strFilePath:Ljava/lang/String;
    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, mimeType:Ljava/lang/String;
    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 736
    .local v0, completeUri:Landroid/net/Uri;
    const/4 v4, -0x1

    .line 737
    .local v4, mediaType:I
    const/4 v1, -0x1

    .line 739
    .local v1, drmType:I
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 740
    .local v3, fileType:I
    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 741
    const/4 v4, 0x0

    .line 742
    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    .line 780
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 815
    .local v6, msg:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 816
    invoke-static {p0, v6, v4, p3}, Lcom/htc/opensense/album/util/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    goto :goto_0

    .line 746
    .end local v6           #msg:Ljava/lang/String;
    .restart local p2
    :cond_7
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 747
    const/4 v4, 0x1

    .line 748
    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_1

    .line 753
    .restart local p2
    :cond_8
    if-nez v3, :cond_6

    .line 755
    const-string v9, "image/bmp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 756
    const/4 v4, 0x0

    .line 757
    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_1
.end method

.method private static showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "fileName"
    .parameter "listener"

    .prologue
    .line 936
    const/4 v1, 0x0

    .line 938
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 939
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 943
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01d3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01da

    new-instance v5, Lcom/htc/opensense/album/util/DrmManager$2;

    invoke-direct {v5, p2}, Lcom/htc/opensense/album/util/DrmManager$2;-><init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "message"
    .parameter "orientation"
    .parameter "intent"

    .prologue
    .line 313
    if-nez p3, :cond_0

    .line 314
    new-instance p3, Landroid/content/Intent;

    .end local p3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 316
    .restart local p3
    :cond_0
    const-string v0, "message"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v0, "orientation"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v0, "com.htc.album"

    const-string v1, "com.htc.album.TabPluginDevice.DrmRightAlertActivity"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v0, 0x30

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 320
    return-void
.end method

.method public static unregisterRenewRightListener()V
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    .line 1660
    return-void
.end method

.method public static verifyOnActivityResult(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method
