.class public abstract Lcom/android/providers/htcCheckin/ICheckinService$Stub;
.super Landroid/os/Binder;
.source "ICheckinService.java"

# interfaces
.implements Lcom/android/providers/htcCheckin/ICheckinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/ICheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/ICheckinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.providers.htcCheckin.ICheckinService"

.field static final TRANSACTION_checkin:I = 0x1

.field static final TRANSACTION_getParentalControlState:I = 0x5

.field static final TRANSACTION_masterClear:I = 0x4

.field static final TRANSACTION_reportCrashAsync:I = 0x3

.field static final TRANSACTION_reportCrashSync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p0, p0, v0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/providers/htcCheckin/ICheckinService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.providers.htcCheckin.ICheckinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/providers/htcCheckin/ICheckinService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/providers/htcCheckin/ICheckinService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/providers/htcCheckin/ICheckinService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->checkin()Z

    move-result v2

    .line 56
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 65
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->reportCrashSync([B)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:[B
    :sswitch_3
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->reportCrashAsync([B)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:[B
    :sswitch_4
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->masterClear()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v3, "com.android.providers.htcCheckin.ICheckinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/providers/htcCheckin/IParentalControlCallback;

    move-result-object v0

    .line 90
    .local v0, _arg0:Lcom/android/providers/htcCheckin/IParentalControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;->getParentalControlState(Lcom/android/providers/htcCheckin/IParentalControlCallback;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
