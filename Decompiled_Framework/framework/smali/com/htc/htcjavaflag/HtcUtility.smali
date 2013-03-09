.class public Lcom/htc/htcjavaflag/HtcUtility;
.super Ljava/lang/Object;
.source "HtcUtility.java"


# static fields
.field static sHasHtcSignature:Z

.field static sInitialized:Z

.field static sInitializedHasHtcSignature:Z

.field static sIsHtcApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHtcSignature()Z
    .locals 2

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBitmapReleaseEnabled()Z
    .locals 1

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcApp()Z
    .locals 2

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTopApp()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->isTopApp()Z

    move-result v0

    return v0
.end method
