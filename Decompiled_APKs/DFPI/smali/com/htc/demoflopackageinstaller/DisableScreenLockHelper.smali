.class public Lcom/htc/demoflopackageinstaller/DisableScreenLockHelper;
.super Ljava/lang/Object;
.source "DisableScreenLockHelper.java"


# static fields
.field private static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final TAG:Ljava/lang/String; = "PIReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearKeyLock(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-static {p0}, Lcom/htc/demoflopackageinstaller/DisableScreenLockHelper;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 25
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 27
    const-string v2, "PIReceiver"

    const-string v3, "DisableScreenLockHelper.clearKeyLock() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    .line 31
    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 32
    const-string v1, "PIReceiver"

    const-string v2, "DisableScreenLockHelper.clearKeyLock() successed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 14
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 17
    const-string v1, "PIReceiver"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :cond_0
    return-object v0
.end method
