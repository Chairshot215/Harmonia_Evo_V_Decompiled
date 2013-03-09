.class public abstract Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;
.super Landroid/os/Binder;
.source "IIdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

.field static final TRANSACTION_destroy:I = 0x5

.field static final TRANSACTION_dispatchPointer:I = 0x3

.field static final TRANSACTION_sendIdleScreenCommand:I = 0x4

.field static final TRANSACTION_setDesiredSize:I = 0x1

.field static final TRANSACTION_setVisibility:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p0, p0, v0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->setDesiredSize(II)V

    goto :goto_0

    .line 57
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v8, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v1, v7

    .line 60
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->setVisibility(Z)V

    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_0
    move v1, v0

    .line 59
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v0, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 73
    .local v1, _arg0:Landroid/view/MotionEvent;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 71
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_2

    .line 78
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    :sswitch_4
    const-string v8, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 95
    .local v5, _arg4:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .local v6, _arg5:Z
    :goto_4
    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto :goto_0

    .line 92
    .end local v5           #_arg4:Landroid/os/Bundle;
    .end local v6           #_arg5:Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;
    goto :goto_3

    :cond_3
    move v6, v0

    .line 95
    goto :goto_4

    .line 101
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "com.htc.lockscreen.idlescreen.IIdleScreenEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;->destroy()V

    goto :goto_0

    .line 38
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
