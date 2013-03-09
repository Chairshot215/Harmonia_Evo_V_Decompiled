.class public Lcom/redbend/vdmc/Sprint/SecureDevice;
.super Ljava/lang/Object;
.source "SecureDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecureDevice"

.field public static final SecureDevice:Ljava/lang/String; = "./SecureDevice"

.field private static SecureDeviceExecCB:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB; = null

.field private static final TagID:I = 0x7

.field private static mContext:Landroid/content/Context;

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/SecureDevice;


# instance fields
.field private hSecureDevice:Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;

.field private msecureDeviceIPL:Lcom/htc/ipl/secureDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->me:Lcom/redbend/vdmc/Sprint/SecureDevice;

    .line 19
    sput-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sput-object p1, Lcom/redbend/vdmc/Sprint/SecureDevice;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/htc/ipl/secureDevice;)Lcom/htc/ipl/secureDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/SecureDevice;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$202(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SecureDevice;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/redbend/vdmc/Sprint/SecureDevice;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->me:Lcom/redbend/vdmc/Sprint/SecureDevice;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/redbend/vdmc/Sprint/SecureDevice;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/SecureDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->me:Lcom/redbend/vdmc/Sprint/SecureDevice;

    .line 30
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->me:Lcom/redbend/vdmc/Sprint/SecureDevice;

    return-object v0
.end method


# virtual methods
.method public Register(Lcom/redbend/vdm/VdmTree;)V
    .locals 4
    .parameter "tree"

    .prologue
    .line 38
    sput-object p1, Lcom/redbend/vdmc/Sprint/SecureDevice;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 39
    new-instance v0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;-><init>(Lcom/redbend/vdmc/Sprint/SecureDevice;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/SecureDevice;->SecureDeviceExecCB:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

    .line 40
    new-instance v0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SecureDevice;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SecureDevice"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SecureDevice;->SecureDeviceExecCB:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SecureDevice;->hSecureDevice:Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;

    .line 41
    return-void
.end method
