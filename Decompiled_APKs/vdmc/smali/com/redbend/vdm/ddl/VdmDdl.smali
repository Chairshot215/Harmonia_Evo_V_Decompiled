.class public Lcom/redbend/vdm/ddl/VdmDdl;
.super Ljava/lang/Object;
.source "VdmDdl.java"


# instance fields
.field private _proxy:Lcom/redbend/vdm/ddl/VdmDdlProxy;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/redbend/vdm/ddl/VdmDdl;->_proxy:Lcom/redbend/vdm/ddl/VdmDdlProxy;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/redbend/vdm/ddl/VdmDdlProxy;

    invoke-direct {v0}, Lcom/redbend/vdm/ddl/VdmDdlProxy;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/ddl/VdmDdl;->_proxy:Lcom/redbend/vdm/ddl/VdmDdlProxy;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/redbend/vdm/ddl/VdmDdl;->_proxy:Lcom/redbend/vdm/ddl/VdmDdlProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ddl/VdmDdlProxy;->destroy()V

    .line 44
    return-void
.end method
