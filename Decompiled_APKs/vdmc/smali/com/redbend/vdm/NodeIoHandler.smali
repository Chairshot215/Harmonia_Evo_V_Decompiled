.class public interface abstract Lcom/redbend/vdm/NodeIoHandler;
.super Ljava/lang/Object;
.source "NodeIoHandler.java"


# virtual methods
.method public abstract read(I[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract write(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
