.class final Lcom/android/mms/util/SimIoUtil$1;
.super Ljava/lang/Object;
.source "SimIoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SimIoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->hasDoneSimSmsAutoSync()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isFirstExecute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->simSmsAutoSync()V

    .line 240
    :cond_0
    return-void
.end method
