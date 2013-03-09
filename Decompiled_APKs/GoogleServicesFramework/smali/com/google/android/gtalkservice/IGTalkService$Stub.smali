.class public abstract Lcom/google/android/gtalkservice/IGTalkService$Stub;
.super Landroid/os/Binder;
.source "IGTalkService.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IGTalkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IGTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/IGTalkService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    move-result-object v2

    .line 57
    .local v2, _arg1:Lcom/google/android/gtalkservice/IGTalkConnectionListener;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/google/android/gtalkservice/IGTalkConnectionListener;
    :sswitch_2
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getActiveConnections()Ljava/util/List;

    move-result-object v4

    .line 64
    .local v4, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 70
    .end local v4           #_result:Ljava/util/List;
    :sswitch_3
    const-string v7, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v4

    .line 74
    .local v4, _result:Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IGTalkConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Lcom/google/android/gtalkservice/IGTalkConnection;
    :sswitch_4
    const-string v7, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v4

    .line 82
    .restart local v4       #_result:Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IGTalkConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 88
    .end local v4           #_result:Lcom/google/android/gtalkservice/IGTalkConnection;
    :sswitch_5
    const-string v7, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 91
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v4

    .line 92
    .local v4, _result:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:J
    .end local v4           #_result:Lcom/google/android/gtalkservice/IImSession;
    :sswitch_6
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->dismissAllNotifications()V

    goto :goto_0

    .line 104
    :sswitch_7
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->dismissNotificationsForAccount(J)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:J
    :sswitch_8
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 117
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->dismissNotificationFor(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    :sswitch_9
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getDeviceStorageLow()Z

    move-result v4

    .line 124
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 130
    .end local v4           #_result:Z
    :sswitch_a
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->printDiagnostics()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v5, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->setTalkForegroundState()V

    goto/16 :goto_0

    .line 43
    nop

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
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
