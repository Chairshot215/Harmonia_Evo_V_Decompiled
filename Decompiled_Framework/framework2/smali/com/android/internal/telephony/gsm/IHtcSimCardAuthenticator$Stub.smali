.class public abstract Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IHtcSimCardAuthenticator.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

.field static final TRANSACTION_getSimCardType:I = 0x1

.field static final TRANSACTION_requestAkaAuthentication:I = 0x3

.field static final TRANSACTION_requestGsmAuthentication:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->getSimCardType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->requestGsmAuthentication([B)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.android.internal.telephony.gsm.IHtcSimCardAuthenticator"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->requestAkaAuthentication([B[B)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
