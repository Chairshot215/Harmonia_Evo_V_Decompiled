.class public Lcom/htc/android/epst/wimax/WiMaxRefurbish;
.super Ljava/lang/Object;
.source "WiMaxRefurbish.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxRefurbish"


# instance fields
.field private DBG:Z

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/wimax/WiMaxRefurbish;->DBG:Z

    return-void
.end method

.method public static exeRefurbish()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_COLD_BOOT_FLAG:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 35
    .local v0, bResult:Z
    const-string v1, "WiMaxRefurbish"

    const-string v2, "exeRefurbish WIMAX_COLD_BOOT_FLAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-nez v0, :cond_0

    .line 38
    const-string v1, "WiMaxRefurbish"

    const-string v2, "storeModifiedProperty WIMAX_COLD_BOOT_FLAG fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method
