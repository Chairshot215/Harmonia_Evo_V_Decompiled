.class public Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;
.super Ljava/lang/Object;
.source "COTAReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcCOTAClient/COTAReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CLOG"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    invoke-static {p0, p1}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 640
    sget-boolean v0, Lcom/htc/htcCOTAClient/COTAReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 646
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 634
    sget-boolean v0, Lcom/htc/htcCOTAClient/COTAReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    return-void
.end method
