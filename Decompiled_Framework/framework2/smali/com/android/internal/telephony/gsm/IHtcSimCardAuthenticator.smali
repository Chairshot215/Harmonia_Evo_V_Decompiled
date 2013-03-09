.class public interface abstract Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;
.super Ljava/lang/Object;
.source "IHtcSimCardAuthenticator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSimCardType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAkaAuthentication([B[B)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestGsmAuthentication([B)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
