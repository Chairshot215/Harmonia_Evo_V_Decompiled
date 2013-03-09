.class Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
.super Ljava/lang/Object;
.source "UploadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field allUploadsCurrentBytes:I

.field allUploadsTotalBytes:I

.field batch_id:I

.field cancelledNum:I

.field control:I

.field fileCount:I

.field id:I

.field insertTime:J

.field lastMod:J

.field maxStatus:I

.field minStatus:I

.field mode:I

.field runningNum:I

.field serviceTitle:Ljava/lang/String;

.field status:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsCurrentBytes:I

    .line 81
    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    .line 83
    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->fileCount:I

    return-void
.end method


# virtual methods
.method addItem(II)V
    .locals 3
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v2, -0x1

    .line 110
    iget v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->fileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->fileCount:I

    .line 111
    iget v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsCurrentBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsCurrentBytes:I

    .line 112
    if-lez p2, :cond_0

    iget v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    if-ne v0, v2, :cond_1

    .line 113
    :cond_0
    const-string v0, "UploadNotification"

    const-string v1, "allUploadsTotalBytes = -1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput v2, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_1
    iget v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    goto :goto_0
.end method
