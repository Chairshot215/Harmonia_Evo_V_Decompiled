.class public abstract Lcom/htc/dcs/DCS$Stub;
.super Landroid/os/Binder;
.source "DCS.java"

# interfaces
.implements Lcom/htc/dcs/DCS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dcs/DCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/DCS$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dcs.DCS"

.field static final TRANSACTION_scheduleService:I = 0x1

.field static final TRANSACTION_scheduleTask:I = 0x3

.field static final TRANSACTION_unscheduleService:I = 0x2

.field static final TRANSACTION_unscheduleTask:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.htc.dcs.DCS"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dcs/DCS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dcs/DCS;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.htc.dcs.DCS"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dcs/DCS;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/htc/dcs/DCS;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/htc/dcs/DCS$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dcs/DCS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v2, "com.htc.dcs.DCS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.htc.dcs.DCS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/dcs/DCSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dcs/DCSCallback;

    move-result-object v5

    .line 56
    .local v5, _arg2:Lcom/htc/dcs/DCSCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 60
    .local v7, _arg4:I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Bundle;

    .line 62
    .local v8, _arg5:[Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg6:I
    move-object/from16 v2, p0

    .line 63
    invoke-virtual/range {v2 .. v9}, Lcom/htc/dcs/DCS$Stub;->scheduleService(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dcs/DCSCallback;II[Landroid/os/Bundle;I)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Lcom/htc/dcs/DCSCallback;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:[Landroid/os/Bundle;
    .end local v9           #_arg6:I
    :sswitch_2
    const-string v2, "com.htc.dcs.DCS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/dcs/DCS$Stub;->unscheduleService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 75
    .local v21, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v21           #_result:I
    :sswitch_3
    const-string v2, "com.htc.dcs.DCS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 89
    .local v13, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 91
    .local v15, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 93
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 100
    .local v8, _arg5:Landroid/os/Bundle;
    :goto_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    .line 102
    .local v9, _arg6:[Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/dcs/DCSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dcs/DCSCallback;

    move-result-object v20

    .local v20, _arg7:Lcom/htc/dcs/DCSCallback;
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 103
    invoke-virtual/range {v10 .. v20}, Lcom/htc/dcs/DCS$Stub;->scheduleTask(Ljava/lang/String;Ljava/lang/String;JJILandroid/os/Bundle;[Landroid/os/Bundle;Lcom/htc/dcs/DCSCallback;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 97
    .end local v8           #_arg5:Landroid/os/Bundle;
    .end local v9           #_arg6:[Landroid/os/Bundle;
    .end local v20           #_arg7:Lcom/htc/dcs/DCSCallback;
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/os/Bundle;
    goto :goto_1

    .line 109
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v7           #_arg4:I
    .end local v8           #_arg5:Landroid/os/Bundle;
    .end local v13           #_arg2:J
    .end local v15           #_arg3:J
    :sswitch_4
    const-string v2, "com.htc.dcs.DCS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/dcs/DCS$Stub;->unscheduleTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
