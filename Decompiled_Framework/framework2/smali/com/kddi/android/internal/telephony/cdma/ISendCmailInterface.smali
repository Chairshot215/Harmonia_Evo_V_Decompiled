.class public interface abstract Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
.super Ljava/lang/Object;
.source "ISendCmailInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelCmail(Landroid/app/PendingIntent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
