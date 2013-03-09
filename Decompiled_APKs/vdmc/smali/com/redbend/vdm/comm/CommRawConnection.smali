.class public interface abstract Lcom/redbend/vdm/comm/CommRawConnection;
.super Ljava/lang/Object;
.source "CommRawConnection.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract init(Ljava/lang/String;Lcom/redbend/vdm/comm/CommHttpAuth$Level;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation
.end method

.method public abstract receive([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation
.end method

.method public abstract send([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation
.end method

.method public abstract setConnectionTimeout(I)V
.end method
