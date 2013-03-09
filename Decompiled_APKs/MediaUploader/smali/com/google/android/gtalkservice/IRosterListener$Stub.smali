.class public abstract Lcom/google/android/gtalkservice/IRosterListener$Stub;
.super Landroid/os/Binder;
.source "IRosterListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IRosterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IRosterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IRosterListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IRosterListener"

.field static final TRANSACTION_presenceChanged:I = 0x2

.field static final TRANSACTION_rosterChanged:I = 0x1

.field static final TRANSACTION_selfPresenceChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IRosterListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;
    .locals 3
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.google.android.gtalkservice.IRosterListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gtalkservice/IRosterListener;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IRosterListener;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IRosterListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IRosterListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IRosterListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->rosterChanged()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 55
    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IRosterListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->presenceChanged(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IRosterListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->selfPresenceChanged()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 71
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
