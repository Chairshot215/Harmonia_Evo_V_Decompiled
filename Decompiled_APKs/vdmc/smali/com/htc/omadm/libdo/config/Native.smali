.class Lcom/htc/omadm/libdo/config/Native;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "JNI"

    const-string v1, "Trying to load htcdm"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v0, "htcdm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native Get_ConValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native Get_WimaxValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native Set_WimaxValue(Ljava/lang/String;Ljava/lang/String;)I
.end method
