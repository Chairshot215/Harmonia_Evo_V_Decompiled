.class public Lcom/sprint/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DISABLE_SCREEN_TIMEOUT_VALUE:I = -0x1

.field private static final DSA_ENABLE_SCREEN_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_enable"

.field private static final DSA_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_timeout"

.field private static final EVENT_BIND_SERVICE:I = 0x64

.field private static final EVENT_REBOOT_REQUEST:I = 0x66

.field private static final EVENT_SERVICE_CONNECTED:I = 0x65

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPermissionPass:Z

.field private mRebootRequest:Z

.field private mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

.field private mSignaturePass:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Platform"

    sput-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    new-instance v1, Lcom/sprint/internal/Platform$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprint/internal/Platform$1;-><init>(Lcom/sprint/internal/Platform;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/internal/Platform$2;

    invoke-direct {v1, p0}, Lcom/sprint/internal/Platform$2;-><init>(Lcom/sprint/internal/Platform;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform - Caller: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "bindService is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/Platform;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprint/internal/Platform;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 1

    iget-object v0, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/internal/Platform;Lcom/sprint/internal/htcsprintservice/IHtcSprintService;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 0

    iput-object p1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/Platform;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCdmaPrlVersion()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v2}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ro.cdma.prl"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v3, "****** require PLATFORM permission!!****** "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method private static isMainThread()Z
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableScreenTimeout()V
    .locals 8

    const/4 v7, -0x1

    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "disableScreenTimeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "Signature or Permission failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v2, :cond_3

    if-eq v0, v7, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_timeout"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save device timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "need Permission"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public enableScreenTimeout()V
    .locals 8

    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v5, :cond_2

    :cond_1
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "Signature or Permission failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savedTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "need Permission"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_2
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "user already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public reboot()V
    .locals 2

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "Signature or Permission failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
