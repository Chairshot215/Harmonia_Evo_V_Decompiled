.class public interface abstract Lcom/redbend/vdm/PLDlPkg;
.super Ljava/lang/Object;
.source "PLDlPkg.java"


# virtual methods
.method public abstract getFilename(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract getPkgSize(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract writeChunk(Ljava/lang/String;I[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
