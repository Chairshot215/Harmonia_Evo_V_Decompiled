.class public Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;
.super Ljava/lang/Object;
.source "UploadMessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcMessageUploader/UploadMessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FLOG"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1392
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1392
    invoke-static {p0, p1}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 1403
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 1409
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 1397
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    return-void
.end method
