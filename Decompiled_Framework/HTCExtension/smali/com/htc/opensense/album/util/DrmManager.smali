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

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/util/DrmManager;->mStatus:I

    sput-object v1, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0

    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0

    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object p0
.end method

.method static synthetic access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-object v0
.end method

.method public static consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "DrmManager"

    const-string v1, "consume image right"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static consumeDrmVideoRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "DrmManager"

    const-string v1, "consume video right"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2

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

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

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

    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0}, Lcom/htc/opensense/album/util/DrmManager;->showDlg(Lcom/htc/widget/HtcAlertDialog;)V

    return-void
.end method

.method public static deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, -0x1

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

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/opensense/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public static dismissAllDialog()V
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    return-void
.end method

.method public static getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getCurrentDrmVideoUri(Lcom/htc/opensense/album/util/ImageManager$IImage;)Landroid/content/Intent;
    .locals 12

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v9, "DrmManager"

    const-string v10, "you haven\'t set current drm file"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    instance-of v9, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;

    if-nez v9, :cond_1

    const-string v9, "DrmManager"

    const-string v10, "your current image is not video type"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    check-cast v8, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;

    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v4

    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v0

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

    invoke-virtual {v8}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

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

    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MM-dd-yyyy"

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

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

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method public static getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_0

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

    :cond_0
    return-object v0
.end method

.method public static getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p2, p4, p5, p6}, Lcom/htc/opensense/album/util/DrmManager;->getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p3, p6}, Lcom/htc/opensense/album/util/DrmManager;->getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/htc/opensense/album/util/DrmManager;->getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p3}, Lcom/htc/opensense/album/util/DrmManager;->getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    const-string v0, "DrmManager"

    const-string v1, "getDrmMessageDlg deprecated."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 6

    const/4 v5, 0x0

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

    sput v5, Lcom/htc/opensense/album/util/DrmManager;->mStatus:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    return v5
.end method

.method public static getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDrmVideoFrame(Lcom/htc/opensense/album/util/ImageManager$DrmVideo;)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v4

    if-nez v4, :cond_0

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

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

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

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public static getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    .locals 5

    move-object v0, p0

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

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x20c01ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMediaType(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_0

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

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmContent(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v3, "DrmManager"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "DrmManager"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const-string v3, "DrmManager"

    const-string v4, "network is available"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isPureFL(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onEnd()V
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->unregisterRenewRightListener()V

    return-void
.end method

.method public static registerRenewRightListener(Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;)V
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    :cond_0
    sput-object p0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-void
.end method

.method public static renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/htc/opensense/album/util/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    invoke-interface {v2}, Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

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

    :cond_1
    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    :cond_2
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/htc/opensense/album/util/DrmManager$7;

    invoke-direct {v3}, Lcom/htc/opensense/album/util/DrmManager$7;-><init>()V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v2, Lcom/htc/opensense/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    const-string v2, "DrmManager"

    const-string v3, "acquire drm rights."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setButtons(Lcom/htc/widget/HtcAlertDialog;[Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)V
    .locals 7

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setupButtons(Landroid/content/Intent;II)V
    .locals 3

    const/16 v2, 0x20

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "btn_count"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "btn_positive_msg"

    const v1, 0x20c01da

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "btn_negative_msg"

    const v1, 0x20c01db

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string v0, "btn_count"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "btn_positive_msg"

    const v1, 0x20c01d5

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

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

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method private static showDlg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static showDrmAlertActivity(Landroid/content/Context;ILcom/htc/opensense/album/util/ImageManager$IImage;I)V
    .locals 10

    move-object v7, p2

    check-cast v7, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense/album/util/DrmManager;->getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-static {v8, p1, v6}, Lcom/htc/opensense/album/util/DrmManager;->setupButtons(Landroid/content/Intent;II)V

    invoke-static {p0, v9, p3, v8}, Lcom/htc/opensense/album/util/DrmManager;->startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static showDrmContentDetails(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0

    return-void
.end method

.method public static showExpireMessage(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 10

    instance-of v7, p0, Landroid/app/Activity;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Context must be Activity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    :cond_1
    :goto_0
    move v1, v4

    const v7, 0x20c01ed

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

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

    return-void

    :cond_2
    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    const-string v7, "image/bmp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;ILcom/htc/opensense/album/util/ImageManager$IImage;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 11

    instance-of v9, p0, Landroid/app/Activity;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Context must be Activity"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v9, 0x2

    if-eq p1, v9, :cond_1

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    :cond_1
    const-string v9, "DrmManager"

    const-string v10, "show expiration dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-static {p0, p2, p3}, Lcom/htc/opensense/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    const-string v9, "DrmManager"

    const-string v10, "show date not sync dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/htc/opensense/album/util/DrmManager;->showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :cond_4
    const/4 v9, -0x2

    if-ne p1, v9, :cond_5

    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v9, "DrmManager"

    const-string v10, "show no issuer dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, p3}, Lcom/htc/opensense/album/util/DrmManager;->showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :cond_5
    if-nez p1, :cond_2

    const-string v9, "DrmManager"

    const-string v10, "show confirmed decrypt dialog"

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v1, -0x1

    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v4, 0x0

    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    :cond_6
    :goto_1
    const/4 v6, 0x0

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

    invoke-static {p0, v6, v4, p3}, Lcom/htc/opensense/album/util/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V

    goto :goto_0

    :cond_7
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_1

    :cond_8
    if-nez v3, :cond_6

    const-string v9, "image/bmp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v4, 0x0

    check-cast p2, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_1
.end method

.method private static showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_0

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

    :catch_0
    move-exception v0

    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_0
    const-string v0, "message"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "orientation"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.htc.album"

    const-string v1, "com.htc.album.TabPluginDevice.DrmRightAlertActivity"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x30

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static unregisterRenewRightListener()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/DrmManager;->mListener:Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    return-void
.end method

.method public static verifyOnActivityResult(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
