.class final Lcom/android/server/HtcPowerSaver$ReduceFrameRate;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReduceFrameRate"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$ReduceFrameRate;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "ReduceFrameRate"

    const-string v3, "powersaver_reduce_frame_rate"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.rdfps"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$ReduceFrameRate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    const-string v0, "HtcPowerSaver"

    const-string v1, "applyPowerSaverSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    const-string v0, "HtcPowerSaver"

    const-string v1, "restoreSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    const-string v0, "HtcPowerSaver"

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
