.class public Lcom/sprint/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DISABLE_SCREEN_TIMEOUT_VALUE:I = 0x36ee80

.field private static final EVENT_BIND_SERVICE:I = 0x64

.field private static final EVENT_REBOOT_REQUEST:I = 0x66

.field private static final EVENT_SERVICE_CONNECTED:I = 0x65

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static TAG:Ljava/lang/String;


# instance fields
.field private defaultTimeOut:I

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

    .prologue
    .line 26
    const-string v0, "Platform"

    sput-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 34
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    .line 36
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mLock:Ljava/lang/Object;

    .line 37
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 46
    new-instance v1, Lcom/sprint/internal/Platform$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprint/internal/Platform$1;-><init>(Lcom/sprint/internal/Platform;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/sprint/internal/Platform$2;

    invoke-direct {v1, p0}, Lcom/sprint/internal/Platform$2;-><init>(Lcom/sprint/internal/Platform;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    .line 86
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    .line 87
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

    .line 90
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 91
    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-nez v1, :cond_0

    .line 92
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

    .line 113
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iput-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sprint/internal/Platform;->defaultTimeOut:I

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    .line 101
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "bindService is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/Platform;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprint/internal/Platform;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/internal/Platform;Lcom/sprint/internal/htcsprintservice/IHtcSprintService;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/Platform;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCdmaPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    const-string v0, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v0}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "ril.cdma.prl"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 161
    :cond_0
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "****** require PLATFORM permission!!****** "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableScreenTimeout()V
    .locals 4

    .prologue
    .line 116
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "disableScreenTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v1, :cond_1

    .line 118
    :cond_0
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "Signature or Permission failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const v3, 0x36ee80

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableScreenTimeout()V
    .locals 4

    .prologue
    .line 130
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "enableScreenTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v1, :cond_1

    .line 132
    :cond_0
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "Signature or Permission failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/sprint/internal/Platform;->defaultTimeOut:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reboot()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v0, :cond_1

    .line 148
    :cond_0
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "Signature or Permission failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 152
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
