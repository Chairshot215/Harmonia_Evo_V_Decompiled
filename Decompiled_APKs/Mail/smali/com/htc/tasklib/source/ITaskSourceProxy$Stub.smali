.class public abstract Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;
.super Landroid/os/Binder;
.source "ITaskSourceProxy.java"

# interfaces
.implements Lcom/htc/tasklib/source/ITaskSourceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/tasklib/source/ITaskSourceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/tasklib/source/ITaskSourceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.tasklib.source.ITaskSourceProxy"

.field static final TRANSACTION_getAccountType:I = 0x3

.field static final TRANSACTION_getDescription:I = 0x1

.field static final TRANSACTION_getDrawable:I = 0x2

.field static final TRANSACTION_getSupportColumns:I = 0x4

.field static final TRANSACTION_isSyncEnabled:I = 0x8

.field static final TRANSACTION_isTimePrecision2Second:I = 0x5

.field static final TRANSACTION_requestHandleError:I = 0x7

.field static final TRANSACTION_requestSync:I = 0x6

.field static final TRANSACTION_requestSyncV1:I = 0x9

.field static final TRANSACTION_stopSync:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p0, p0, v0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/tasklib/source/ITaskSourceProxy;
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
    const-string v1, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/tasklib/source/ITaskSourceProxy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/tasklib/source/ITaskSourceProxy;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->getDrawable()Ljava/lang/String;

    move-result-object v2

    .line 57
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->getSupportColumns()I

    move-result v2

    .line 73
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2           #_result:I
    :sswitch_5
    const-string v5, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->isTimePrecision2Second()Z

    move-result v2

    .line 81
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->requestSync(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->requestHandleError(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_8
    const-string v5, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->isSyncEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 111
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 122
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->requestSyncV1(Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_2
    move v1, v3

    .line 121
    goto :goto_1

    .line 128
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.htc.tasklib.source.ITaskSourceProxy"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->stopSync(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
