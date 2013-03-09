.class public interface abstract Lcom/htc/opensense/social/IServiceCallback;
.super Ljava/lang/Object;
.source "IServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/IServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlbumsOperationFinish([Lcom/htc/opensense/social/data/Album;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFeedsOperationFinish([Lcom/htc/opensense/social/data/Feed;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPeopleOperationFinish([Lcom/htc/opensense/social/data/Person;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
