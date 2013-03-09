.class public Landroid/app/HtcDeviceInfo$ProcessInfo;
.super Ljava/lang/Object;
.source "HtcDeviceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/HtcDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInfo"
.end annotation


# instance fields
.field public group:I

.field public lastCPUUpdateTime:J

.field public numANRs:I

.field public numCrashes:I

.field public pid:I

.field public processName:Ljava/lang/String;

.field public totalCPUTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    iput v3, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iput v3, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iput v2, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    return-void
.end method


# virtual methods
.method public clone()Landroid/app/HtcDeviceInfo$ProcessInfo;
    .locals 3

    new-instance v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    iget-object v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    iget-wide v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    iget v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iget v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iget v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    iget v1, p0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/HtcDeviceInfo$ProcessInfo;->clone()Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-result-object v0

    return-object v0
.end method
