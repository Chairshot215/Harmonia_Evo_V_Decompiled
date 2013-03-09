.class public Lcom/htc/ipl/fumo;
.super Ljava/lang/Object;
.source "fumo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field private static me:Lcom/htc/ipl/fumo;


# instance fields
.field private mPkgSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/fumo;->me:Lcom/htc/ipl/fumo;

    .line 78
    :try_start_0
    const-string v0, "/system/lib/libext3-fileio.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/ipl/fumo;->mPkgSize:I

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/htc/ipl/fumo;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/ipl/fumo;->me:Lcom/htc/ipl/fumo;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/htc/ipl/fumo;

    invoke-direct {v0}, Lcom/htc/ipl/fumo;-><init>()V

    sput-object v0, Lcom/htc/ipl/fumo;->me:Lcom/htc/ipl/fumo;

    .line 24
    :cond_0
    sget-object v0, Lcom/htc/ipl/fumo;->me:Lcom/htc/ipl/fumo;

    return-object v0
.end method


# virtual methods
.method public DelPkgFilename()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public GetPkgFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public GetPkgMaxSize()I
    .locals 1

    .prologue
    .line 53
    const/high16 v0, 0x80

    return v0
.end method

.method public PackageInfo(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 4
    .parameter "pkgName"
    .parameter "pkgDescription"
    .parameter "nSize"
    .parameter "nDT"
    .parameter "nIT"

    .prologue
    .line 32
    const-string v1, "HtcIPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v1, "HtcIPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Install Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    long-to-int v1, p3

    iput v1, p0, Lcom/htc/ipl/fumo;->mPkgSize:I

    .line 39
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 40
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 41
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->handleMessage(Landroid/os/Message;)V

    .line 42
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v1

    invoke-virtual {v1, p2, p6}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->UpdateDescription(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public Write(Ljava/lang/String;I[B)Z
    .locals 5
    .parameter "filename"
    .parameter "offset"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v3, v4, :cond_0

    .line 63
    const-string v1, "HtcIPL"

    const-string v3, "user has canceled: not show GUI and write file"

    invoke-static {v1, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return v2

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 67
    .local v0, msgToHtc:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 68
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 69
    iget v3, p0, Lcom/htc/ipl/fumo;->mPkgSize:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 70
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->handleMessage(Landroid/os/Message;)V

    .line 73
    array-length v3, p3

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/htc/ipl/fumo;->writeext3(Ljava/lang/String;I[BI)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public native writeext3(Ljava/lang/String;I[BI)I
.end method
