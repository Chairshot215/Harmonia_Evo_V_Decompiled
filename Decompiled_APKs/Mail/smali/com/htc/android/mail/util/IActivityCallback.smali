.class public interface abstract Lcom/htc/android/mail/util/IActivityCallback;
.super Ljava/lang/Object;
.source "IActivityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/util/IActivityCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getReadSeq()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
