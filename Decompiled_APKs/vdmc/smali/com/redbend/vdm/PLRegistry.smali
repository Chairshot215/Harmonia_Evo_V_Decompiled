.class public interface abstract Lcom/redbend/vdm/PLRegistry;
.super Ljava/lang/Object;
.source "PLRegistry.java"


# virtual methods
.method public abstract deleteKeysByPrefix(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract getIntValue(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getStringValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setIntValue(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
