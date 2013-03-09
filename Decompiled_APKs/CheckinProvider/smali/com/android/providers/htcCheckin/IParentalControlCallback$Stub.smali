.class public abstract Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub;
.super Landroid/os/Binder;
.source "IParentalControlCallback.java"

# interfaces
.implements Lcom/android/providers/htcCheckin/IParentalControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/IParentalControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.providers.htcCheckin.IParentalControlCallback"

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.providers.htcCheckin.IParentalControlCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/providers/htcCheckin/IParentalControlCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.providers.htcCheckin.IParentalControlCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/providers/htcCheckin/IParentalControlCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/providers/htcCheckin/IParentalControlCallback;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v2, "com.android.providers.htcCheckin.IParentalControlCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.android.providers.htcCheckin.IParentalControlCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    sget-object v2, Lcom/google/android/net/ParentalControlState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/net/ParentalControlState;

    .line 59
    .local v0, _arg0:Lcom/google/android/net/ParentalControlState;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub;->onResult(Lcom/google/android/net/ParentalControlState;)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/google/android/net/ParentalControlState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/net/ParentalControlState;
    goto :goto_1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
