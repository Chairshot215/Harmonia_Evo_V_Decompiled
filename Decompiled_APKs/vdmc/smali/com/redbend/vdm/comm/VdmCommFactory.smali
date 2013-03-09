.class public Lcom/redbend/vdm/comm/VdmCommFactory;
.super Ljava/lang/Object;
.source "VdmCommFactory.java"

# interfaces
.implements Lcom/redbend/vdm/comm/CommFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRawConnection()Lcom/redbend/vdm/comm/CommRawConnection;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/redbend/vdm/comm/VdmRawConnection;

    invoke-direct {v0}, Lcom/redbend/vdm/comm/VdmRawConnection;-><init>()V

    return-object v0
.end method
