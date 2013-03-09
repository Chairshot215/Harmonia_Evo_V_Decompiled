.class public Lcom/redbend/vdmc/DlPkg;
.super Ljava/lang/Object;
.source "DlPkg.java"

# interfaces
.implements Lcom/redbend/vdm/PLDlPkg;


# instance fields
.field private _context:Landroid/content/Context;

.field private mFumoIPL:Lcom/htc/ipl/fumo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/redbend/vdmc/DlPkg;->_context:Landroid/content/Context;

    .line 18
    invoke-static {}, Lcom/htc/ipl/fumo;->getInstance()Lcom/htc/ipl/fumo;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/DlPkg;->mFumoIPL:Lcom/htc/ipl/fumo;

    .line 19
    return-void
.end method


# virtual methods
.method public getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "vdmIdentifier"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/redbend/vdmc/DlPkg;->mFumoIPL:Lcom/htc/ipl/fumo;

    invoke-virtual {v0}, Lcom/htc/ipl/fumo;->GetPkgFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/redbend/vdmc/DlPkg;->mFumoIPL:Lcom/htc/ipl/fumo;

    invoke-virtual {v0}, Lcom/htc/ipl/fumo;->GetPkgMaxSize()I

    move-result v0

    return v0
.end method

.method public getPkgSize(Ljava/lang/String;)I
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .local v1, size:J
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/redbend/vdmc/DlPkg;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, PkgFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 36
    :cond_0
    long-to-int v3, v1

    return v3
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/redbend/vdmc/DlPkg;->mFumoIPL:Lcom/htc/ipl/fumo;

    invoke-virtual {v0}, Lcom/htc/ipl/fumo;->DelPkgFilename()Z

    .line 41
    return-void
.end method

.method public writeChunk(Ljava/lang/String;I[B)I
    .locals 3
    .parameter "filename"
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 46
    array-length v2, p3

    add-int/2addr v2, p2

    int-to-long v0, v2

    .line 47
    .local v0, size:J
    iget-object v2, p0, Lcom/redbend/vdmc/DlPkg;->mFumoIPL:Lcom/htc/ipl/fumo;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/ipl/fumo;->Write(Ljava/lang/String;I[B)Z

    .line 48
    long-to-int v2, v0

    return v2
.end method
