.class Lcom/redbend/vdm/ddl/VdmDdlProxy;
.super Ljava/lang/Object;
.source "VdmDdlProxy.java"


# direct methods
.method constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/redbend/vdm/ddl/VdmDdlProxy;->create()I

    move-result v0

    .line 17
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected native create()I
.end method

.method protected native destroy()V
.end method
