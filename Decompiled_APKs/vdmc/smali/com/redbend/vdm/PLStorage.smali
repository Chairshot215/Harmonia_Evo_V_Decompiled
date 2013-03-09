.class public interface abstract Lcom/redbend/vdm/PLStorage;
.super Ljava/lang/Object;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/PLStorage$ItemType;,
        Lcom/redbend/vdm/PLStorage$AccessMode;
    }
.end annotation


# virtual methods
.method public abstract delete(Lcom/redbend/vdm/PLStorage$ItemType;)V
.end method

.method public abstract open(Lcom/redbend/vdm/PLStorage$ItemType;Lcom/redbend/vdm/PLStorage$AccessMode;)Lcom/redbend/vdm/PLFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
