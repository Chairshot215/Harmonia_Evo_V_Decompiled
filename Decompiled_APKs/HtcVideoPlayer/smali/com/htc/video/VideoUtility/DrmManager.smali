.class public Lcom/htc/video/VideoUtility/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/VideoUtility/DrmManager$DRMActionActivityBroadcastReceiver;,
        Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;,
        Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;,
        Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;,
        Lcom/htc/video/VideoUtility/DrmManager$Columns;
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

.field public static final DRM_TYPE_CD:I = 0x2

.field public static final DRM_TYPE_FL:I = 0x1

.field public static final DRM_TYPE_SD:I = 0x3

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

.field private static mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

.field private static mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private static mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-object v1, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 60
    sput-object v1, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 61
    sput-object v1, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 62
    sput-object v1, Lcom/htc/video/VideoUtility/DrmManager;->mDownloadUri:Landroid/net/Uri;

    .line 873
    const/4 v0, 0x0

    sput v0, Lcom/htc/video/VideoUtility/DrmManager;->mStatus:I

    .line 874
    sput-object v1, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/htc/video/VideoUtility/DrmManager;->mDownloadUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object p0
.end method

.method static synthetic access$700()Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    return-object v0
.end method

.method public static consumeDrmVideoRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 659
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    .line 660
    return-void
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "ctx"
    .parameter "message"

    .prologue
    .line 130
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
    .locals 3
    .parameter "ctx"
    .parameter "message"
    .parameter "mediaType"
    .parameter "listener"

    .prologue
    .line 477
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01da

    new-instance v2, Lcom/htc/video/VideoUtility/DrmManager$5;

    invoke-direct {v2, p3, p2}, Lcom/htc/video/VideoUtility/DrmManager$5;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01db

    new-instance v2, Lcom/htc/video/VideoUtility/DrmManager$4;

    invoke-direct {v2, p3}, Lcom/htc/video/VideoUtility/DrmManager$4;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/video/VideoUtility/DrmManager$3;

    invoke-direct {v1, p3}, Lcom/htc/video/VideoUtility/DrmManager$3;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    sput-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 516
    :cond_0
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->showDlg(Lcom/htc/widget/HtcAlertDialog;)V

    .line 518
    return-void
.end method

.method private static getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "constraint"

    .prologue
    .line 570
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    .line 571
    .local v9, strDescription:[Ljava/lang/String;
    const-string v2, "MM/dd/yyyy kk:mm"

    .line 572
    .local v2, dateFormatString:Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 573
    .local v6, nCount:J
    const/4 v3, 0x0

    .line 574
    .local v3, dateStart:Ljava/util/Date;
    const/4 v1, 0x0

    .line 575
    .local v1, dateEnd:Ljava/util/Date;
    const-wide/16 v4, -0x1

    .line 576
    .local v4, lInterval:J
    if-eqz p1, :cond_3

    .line 577
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v10

    int-to-long v6, v10

    .line 578
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v3

    .line 579
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v1

    .line 580
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v4

    .line 581
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_0

    .line 582
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 585
    :cond_0
    if-eqz v3, :cond_1

    .line 600
    const/4 v10, 0x0

    invoke-static {p0, v3}, Lcom/htc/video/VideoUtility/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 603
    :cond_1
    if-eqz v1, :cond_2

    .line 617
    const/4 v10, 0x1

    invoke-static {p0, v1}, Lcom/htc/video/VideoUtility/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 620
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_3

    .line 621
    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    long-to-int v8, v10

    .line 623
    .local v8, sec:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 624
    .local v0, cal:Ljava/util/Calendar;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 625
    const/16 v10, 0xd

    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 627
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/htc/video/VideoUtility/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 631
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v8           #sec:I
    :cond_3
    return-object v9
.end method

.method private static getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I
    .locals 10
    .parameter "constraint"

    .prologue
    const-wide/16 v8, -0x1

    .line 521
    const-wide/16 v5, -0x1

    .line 522
    .local v5, nCount:J
    const/4 v2, 0x0

    .line 523
    .local v2, dateStart:Ljava/util/Date;
    const/4 v1, 0x0

    .line 524
    .local v1, dateEnd:Ljava/util/Date;
    const-wide/16 v3, -0x1

    .line 525
    .local v3, lInterval:J
    const/4 v0, -0x1

    .line 526
    .local v0, constraintType:I
    if-eqz p0, :cond_3

    .line 527
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v7

    int-to-long v5, v7

    .line 528
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v2

    .line 529
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v1

    .line 530
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    .line 531
    cmp-long v7, v5, v8

    if-eqz v7, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 535
    :cond_0
    if-eqz v2, :cond_1

    .line 536
    const/4 v0, 0x2

    .line 539
    :cond_1
    if-eqz v1, :cond_2

    .line 540
    const/4 v0, 0x2

    .line 543
    :cond_2
    cmp-long v7, v3, v8

    if-eqz v7, :cond_3

    .line 544
    const/4 v0, 0x1

    .line 547
    :cond_3
    return v0
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 553
    const-string v0, "MM-dd-yyyy"

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 558
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 565
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 561
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
    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 243
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 248
    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 252
    :goto_1
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
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
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 179
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_1
    invoke-static {p0, p2, p4, p5, p6}, Lcom/htc/video/VideoUtility/DrmManager;->getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-static {p0, p3, p6}, Lcom/htc/video/VideoUtility/DrmManager;->getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-static {p0}, Lcom/htc/video/VideoUtility/DrmManager;->getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_4
    invoke-static {p0, p3}, Lcom/htc/video/VideoUtility/DrmManager;->getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
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

.method public static getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 643
    const/4 v8, 0x0

    .line 644
    .local v8, strFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v9

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 646
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 649
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 650
    invoke-static {p0, p1, v8}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 651
    .local v7, is:Ljava/io/InputStream;
    if-nez v7, :cond_1

    .line 652
    const-string v1, "DrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " input stream is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    return-object v7
.end method

.method public static getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "dataPath"
    .parameter "offset"
    .parameter "contentId"
    .parameter "contentBoundary"

    .prologue
    .line 635
    move-object v0, p0

    .line 636
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

    .line 637
    .local v1, uriForPV:Ljava/lang/String;
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 232
    const v1, 0x20c01ef

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const v1, 0x20c01ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMediaType(Ljava/lang/String;)I
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 144
    const/4 v1, -0x1

    .line 145
    .local v1, mediaType:I
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const/4 v1, 0x0

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    if-nez v0, :cond_0

    .line 153
    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "filePath"

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 259
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 264
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

    .line 267
    :cond_0
    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .parameter "ctx"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "drmType"

    .prologue
    .line 185
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 186
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    const/4 v2, 0x0

    .line 187
    .local v2, message:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/video/VideoUtility/DrmManager;->getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, strConstraint:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v1

    .line 209
    .local v1, constraintType:I
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1

    .line 210
    const v7, 0x20c01e8

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 212
    :cond_1
    if-eqz v0, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-eqz v7, :cond_0

    .line 213
    if-nez v1, :cond_2

    .line 214
    const v7, 0x20c01e9

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 215
    :cond_2
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 216
    const v7, 0x20c01ea

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    :cond_3
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 218
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 219
    .local v4, ms:J
    const-wide/32 v7, 0xea60

    div-long v7, v4, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, mins:Ljava/lang/String;
    const v7, 0x20c01eb

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 663
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 665
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 666
    const-string v3, "DrmManager"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    const-string v3, "DrmManager"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 668
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 669
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 670
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 671
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 672
    const-string v3, "DrmManager"

    const-string v4, "network is available"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v3, 0x1

    goto :goto_0

    .line 670
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static onEnd()V
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 888
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 891
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 893
    :cond_1
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->unregisterRenewRightListener()V

    .line 894
    return-void
.end method

.method public static registerRenewRightListener(Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 876
    sget-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    if-eq v0, p0, :cond_0

    .line 877
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    .line 879
    :cond_0
    sput-object p0, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    .line 880
    return-void
.end method

.method public static renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 834
    invoke-static {p0}, Lcom/htc/video/VideoUtility/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 839
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

    .line 844
    .end local v1           #rc:Landroid/content/res/Resources;
    :goto_0
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    if-eqz v2, :cond_0

    .line 845
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    invoke-interface {v2}, Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;->onAbort()V

    .line 870
    :cond_0
    :goto_1
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-class v2, Lcom/htc/video/VideoUtility/DrmManager$DRMActionActivityBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mDownloadUri:Landroid/net/Uri;

    .line 851
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_2

    .line 852
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 854
    :cond_2
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 855
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 856
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 857
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/htc/video/VideoUtility/DrmManager$10;

    invoke-direct {v3}, Lcom/htc/video/VideoUtility/DrmManager$10;-><init>()V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 867
    sget-object v2, Lcom/htc/video/VideoUtility/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 869
    const-string v2, "DrmManager"

    const-string v3, "acquire drm rights."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setButtons(Lcom/htc/widget/HtcAlertDialog;[Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;)V
    .locals 7
    .parameter "dialog"
    .parameter "buttons"

    .prologue
    .line 138
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 139
    .local v1, button:Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;
    #getter for: Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->buttonPosition:I
    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->access$000(Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;)I

    move-result v4

    #getter for: Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->title:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->access$100(Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;->access$200(Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v1           #button:Lcom/htc/video/VideoUtility/DrmManager$ButtonInfo;
    :cond_0
    return-void
.end method

.method private static setupButtons(Landroid/content/Intent;II)V
    .locals 3
    .parameter "intent"
    .parameter "state"
    .parameter "drmType"

    .prologue
    const/4 v1, 0x2

    const/16 v2, 0x20

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    :pswitch_0
    return-void

    .line 273
    :pswitch_1
    const-string v0, "btn_count"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v0, "btn_positive_msg"

    const v1, 0x20c01da

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v0, "btn_negative_msg"

    const v1, 0x20c01db

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 279
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 280
    const-string v0, "btn_count"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v0, "btn_positive_msg"

    const v1, 0x20c01ee

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v0, "btn_negative_msg"

    const v1, 0x20c01d6

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v0, "btn_positive_result_code"

    const/16 v1, 0x60

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v0, "btn_negative_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 286
    :cond_0
    const-string v0, "btn_count"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v0, "btn_positive_msg"

    const v1, 0x20c015f

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 293
    :pswitch_3
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 271
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

.method private static showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 419
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 424
    :goto_0
    const v3, 0x20c00e2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 430
    :goto_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01da

    new-instance v5, Lcom/htc/video/VideoUtility/DrmManager$1;

    invoke-direct {v5, p1}, Lcom/htc/video/VideoUtility/DrmManager$1;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method private static showDlg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dlg"

    .prologue
    .line 472
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 474
    :cond_0
    return-void
.end method

.method public static showExpireMessage(Landroid/content/Context;Lcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
    .locals 11
    .parameter "ctx"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 687
    instance-of v8, p0, Landroid/app/Activity;

    if-nez v8, :cond_0

    .line 688
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Context must be Activity"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 690
    :cond_0
    invoke-virtual {p1}, Lcom/htc/video/VideoUtility/VideoData;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/video/VideoUtility/VideoData;->getDrmType()I

    move-result v1

    .line 692
    .local v1, drmType:I
    invoke-virtual {p1}, Lcom/htc/video/VideoUtility/VideoData;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 693
    .local v6, mimeType:Ljava/lang/String;
    const/4 v5, -0x1

    .line 695
    .local v5, mediaType:I
    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 696
    .local v3, fileType:I
    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 697
    const/4 v5, 0x0

    .line 710
    :cond_1
    :goto_0
    move v2, v5

    .line 711
    .local v2, fileMediaType:I
    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    .line 712
    const v8, 0x20c01ef

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, msg:Ljava/lang/String;
    :goto_1
    const/4 v8, 0x3

    if-ne v1, v8, :cond_6

    .line 718
    sget-object v8, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 720
    :cond_2
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f040001

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c01ee

    new-instance v10, Lcom/htc/video/VideoUtility/DrmManager$8;

    invoke-direct {v10, p0, p2, v2, v4}, Lcom/htc/video/VideoUtility/DrmManager$8;-><init>(Landroid/content/Context;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;ILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c01d6

    new-instance v10, Lcom/htc/video/VideoUtility/DrmManager$7;

    invoke-direct {v10, p2}, Lcom/htc/video/VideoUtility/DrmManager$7;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/video/VideoUtility/DrmManager$6;

    invoke-direct {v9, p2}, Lcom/htc/video/VideoUtility/DrmManager$6;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 808
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    sput-object v8, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 809
    sget-object v8, Lcom/htc/video/VideoUtility/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 831
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_2
    return-void

    .line 698
    .end local v2           #fileMediaType:I
    .end local v7           #msg:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 699
    const/4 v5, 0x1

    goto :goto_0

    .line 701
    :cond_4
    if-nez v3, :cond_1

    .line 703
    const-string v8, "image/bmp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 704
    const/4 v5, 0x0

    goto :goto_0

    .line 714
    .restart local v2       #fileMediaType:I
    :cond_5
    const v8, 0x20c01ed

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #msg:Ljava/lang/String;
    goto :goto_1

    .line 811
    :cond_6
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f040001

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c015f

    new-instance v10, Lcom/htc/video/VideoUtility/DrmManager$9;

    invoke-direct {v10, p2}, Lcom/htc/video/VideoUtility/DrmManager$9;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_2
.end method

.method public static showMessage(Landroid/content/Context;ILcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
    .locals 20
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 299
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 300
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Context must be Activity"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 302
    :cond_0
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 303
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/htc/video/VideoUtility/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    .line 411
    :cond_2
    :goto_0
    return-void

    .line 307
    :cond_3
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/video/VideoUtility/DrmManager;->showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 312
    :cond_4
    const/16 v16, -0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/htc/video/VideoUtility/DrmManager;->showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 325
    .end local v8           #filePath:Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_2

    .line 326
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 327
    .local v15, strTitle:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, strFilePath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, mimeType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 330
    .local v3, completeUri:Landroid/net/Uri;
    const/4 v10, -0x1

    .line 331
    .local v10, mediaType:I
    const/4 v7, -0x1

    .line 332
    .local v7, drmType:I
    const/4 v4, 0x0

    .line 333
    .local v4, constraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v11}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v9

    .line 334
    .local v9, fileType:I
    invoke-static {v9}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 335
    const/4 v10, 0x0

    .line 336
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getDrmType()I

    move-result v7

    .line 339
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    .line 364
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 365
    .local v6, drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/provider/DrmStore$DrmConstraint;->getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 369
    if-eqz p3, :cond_2

    .line 370
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onDrmItemClick(I)V

    goto :goto_0

    .line 340
    .end local v6           #drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_7
    invoke-static {v9}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 341
    const/4 v10, 0x1

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getDrmType()I

    move-result v7

    .line 345
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    goto :goto_1

    .line 347
    :cond_8
    if-nez v9, :cond_6

    .line 349
    const-string v16, "image/bmp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 350
    const/4 v10, 0x0

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/htc/video/VideoUtility/VideoData;->getDrmType()I

    move-result v7

    .line 354
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    goto :goto_1

    .line 374
    .restart local v6       #drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_9
    const/4 v12, 0x0

    .line 375
    .local v12, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/video/VideoUtility/DrmManager;->getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, strConstraint:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/video/VideoUtility/DrmManager;->getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v5

    .line 378
    .local v5, constraintType:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_b

    .line 379
    const v16, 0x20c01e8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 408
    :cond_a
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v12, v10, v1}, Lcom/htc/video/VideoUtility/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    goto/16 :goto_0

    .line 381
    :cond_b
    if-eqz v4, :cond_a

    const/16 v16, 0x0

    aget-object v16, v13, v16

    if-eqz v16, :cond_a

    .line 382
    if-nez v5, :cond_e

    .line 383
    const/16 v16, 0x0

    aget-object v16, v13, v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 384
    const v16, 0x20c01f0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 387
    :cond_c
    sget-boolean v16, Lcom/htc/video/Common/Constants;->FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z

    if-eqz v16, :cond_d

    .line 389
    const v16, 0x20c01e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 393
    :cond_d
    if-eqz p3, :cond_2

    .line 395
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onDrmItemClick(I)V

    goto/16 :goto_0

    .line 401
    :cond_e
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_f

    .line 402
    const v16, 0x20c01ea

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x1

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 403
    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_a

    .line 404
    const v16, 0x20c01ec

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2
.end method

.method private static showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "fileName"
    .parameter "listener"

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 447
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 448
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 453
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

    .line 457
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c01da

    new-instance v5, Lcom/htc/video/VideoUtility/DrmManager$2;

    invoke-direct {v5, p2}, Lcom/htc/video/VideoUtility/DrmManager$2;-><init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 449
    :catch_0
    move-exception v0

    .line 450
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
    .line 119
    if-nez p3, :cond_0

    .line 120
    new-instance p3, Landroid/content/Intent;

    .end local p3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 122
    .restart local p3
    :cond_0
    const-string v0, "message"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v0, "orientation"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v0, "com.htc.album"

    const-string v1, "com.htc.album.TabPluginDevice.DrmRightAlertActivity"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v0, 0x30

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method public static unregisterRenewRightListener()V
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/video/VideoUtility/DrmManager;->mListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    .line 884
    return-void
.end method
