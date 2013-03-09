.class public Lcom/htc/home/personalize/util/UserLogger;
.super Ljava/lang/Object;
.source "UserLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserLogger"

.field private static final ULOG_APPID:Ljava/lang/String; = "com.htc.launcher"

.field private static final ULOG_CATOGORY_SKINPICKER_PICKER:Ljava/lang/String; = "skin_picker"

.field private static final ULOG_SKIN_PICKER_ID:Ljava/lang/String; = "SkinID"

.field private static final ULOG_SKIN_PICKER_NAME:Ljava/lang/String; = "SkinName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logSkinPicker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "skinID"
    .parameter "skinName"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18
    new-instance v1, Ljava/lang/Float;

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, version:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 21
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 22
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.htc.launcher"

    invoke-virtual {v0, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "skin_picker"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 24
    const-string v2, "SkinID"

    invoke-virtual {v0, v2, p0}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 25
    const-string v2, "SkinName"

    invoke-virtual {v0, v2, p1}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 27
    const-string v2, "UserLogger"

    const-string v3, "%s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "SkinID"

    aput-object v5, v4, v6

    aput-object p0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v2, "UserLogger"

    const-string v3, "%s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "SkinName"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 31
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 33
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method
