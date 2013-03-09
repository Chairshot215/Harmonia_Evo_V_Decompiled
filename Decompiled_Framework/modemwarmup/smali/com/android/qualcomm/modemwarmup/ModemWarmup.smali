.class public Lcom/android/qualcomm/modemwarmup/ModemWarmup;
.super Ljava/lang/Object;
.source "ModemWarmup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;
    }
.end annotation


# static fields
.field private static final MAX_HOST_NAME_LENGTH:I = 0xa


# instance fields
.field private mIsQcomPlatform:Z

.field private mIsWarmingOn:Z

.field private mPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "net.modem.warming"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsWarmingOn:Z

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mPlatform:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsQcomPlatform:Z

    iget-object v0, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mPlatform:Ljava/lang/String;

    const-string v1, "msm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mPlatform:Ljava/lang/String;

    const-string v1, "qsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsQcomPlatform:Z

    :cond_1
    const-string v0, "Modem Warmup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modem warmup system property is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsWarmingOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public warmModem()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsWarmingOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup;->mIsQcomPlatform:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;

    invoke-direct {v0, p0}, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;-><init>(Lcom/android/qualcomm/modemwarmup/ModemWarmup;)V

    invoke-virtual {v0}, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;->start()V

    :cond_0
    return-void
.end method
