.class public Lcom/redbend/vdmc/Sprint/Sprint;
.super Ljava/lang/Object;
.source "Sprint.java"


# static fields
.field private static final CMD_DEVICE_DC:Ljava/lang/String; = "org.openmobilealliance.dm.deviceconfiguration.devicerequest"

.field private static final CMD_DEVICE_HFA:Ljava/lang/String; = "org.openmobilealliance.dm.deviceconfiguration.hfa"

.field private static final CMD_DEVICE_PRL:Ljava/lang/String; = "org.openmobilealliance.dm.prlupdate.devicerequest"

.field private static final CMD_USER_DC:Ljava/lang/String; = "org.openmobilealliance.dm.deviceconfiguration.userrequest"

.field private static final CMD_USER_PRL:Ljava/lang/String; = "org.openmobilealliance.dm.prlupdate.userrequest"

.field public static final DEVICE_DC:I = 0xc

.field public static final DEVICE_HFA:I = 0xb

.field public static final DEVICE_PRL:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "Sprint"

.field public static final USER_DC:I = 0x16

.field public static final USER_PRL:I = 0x17

.field private static me:Lcom/redbend/vdmc/Sprint/Sprint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/Sprint/Sprint;->me:Lcom/redbend/vdmc/Sprint/Sprint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/Sprint;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/redbend/vdmc/Sprint/Sprint;->me:Lcom/redbend/vdmc/Sprint/Sprint;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/redbend/vdmc/Sprint/Sprint;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/Sprint;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/Sprint;->me:Lcom/redbend/vdmc/Sprint/Sprint;

    .line 25
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/Sprint;->me:Lcom/redbend/vdmc/Sprint/Sprint;

    return-object v0
.end method


# virtual methods
.method public GetAlertType(I)Ljava/lang/String;
    .locals 1
    .parameter "nType"

    .prologue
    .line 32
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 33
    const-string v0, "org.openmobilealliance.dm.deviceconfiguration.hfa"

    .line 42
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 35
    const-string v0, "org.openmobilealliance.dm.deviceconfiguration.devicerequest"

    goto :goto_0

    .line 36
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 37
    const-string v0, "org.openmobilealliance.dm.prlupdate.devicerequest"

    goto :goto_0

    .line 38
    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 39
    const-string v0, "org.openmobilealliance.dm.deviceconfiguration.userrequest"

    goto :goto_0

    .line 40
    :cond_3
    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    .line 41
    const-string v0, "org.openmobilealliance.dm.prlupdate.userrequest"

    goto :goto_0

    .line 42
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
