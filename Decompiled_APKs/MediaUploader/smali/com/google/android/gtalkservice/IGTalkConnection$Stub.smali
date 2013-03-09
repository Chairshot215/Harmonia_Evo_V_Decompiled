.class public abstract Lcom/google/android/gtalkservice/IGTalkConnection$Stub;
.super Landroid/os/Binder;
.source "IGTalkConnection.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IGTalkConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IGTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IGTalkConnection"

.field static final TRANSACTION_clearConnectionStatistics:I = 0xe

.field static final TRANSACTION_createImSessionForProvider:I = 0x5

.field static final TRANSACTION_createImSessionForProviderId:I = 0x6

.field static final TRANSACTION_getConnectionUptime:I = 0xd

.field static final TRANSACTION_getDefaultImSession:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x3

.field static final TRANSACTION_getImSessionForAccountId:I = 0x7

.field static final TRANSACTION_getJid:I = 0x2

.field static final TRANSACTION_getLastActivityFromServerTime:I = 0x9

.field static final TRANSACTION_getLastActivityToServerTime:I = 0xa

.field static final TRANSACTION_getNumberOfConnectionsAttempted:I = 0xc

.field static final TRANSACTION_getNumberOfConnectionsMade:I = 0xb

.field static final TRANSACTION_getUsername:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x4

.field static final TRANSACTION_sendHeartbeat:I = 0x10

.field static final TRANSACTION_sendHttpRequest:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkConnection;
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
    const-string v1, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IGTalkConnection;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 56
    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getJid()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 72
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->isConnected()Z

    move-result v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 80
    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->createImSessionForProvider(Ljava/lang/String;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 89
    goto :goto_2

    .line 94
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->createImSessionForProviderId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 100
    goto/16 :goto_0

    :cond_2
    move-object v0, v3

    .line 99
    goto :goto_3

    .line 104
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 110
    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    .line 109
    goto :goto_4

    .line 114
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 118
    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    .line 117
    goto :goto_5

    .line 122
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getLastActivityFromServerTime()J

    move-result-wide v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v2

    .line 126
    goto/16 :goto_0

    .line 130
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getLastActivityToServerTime()J

    move-result-wide v0

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v2

    .line 134
    goto/16 :goto_0

    .line 138
    :sswitch_b
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getNumberOfConnectionsMade()I

    move-result v0

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 142
    goto/16 :goto_0

    .line 146
    :sswitch_c
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getNumberOfConnectionsAttempted()I

    move-result v0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 150
    goto/16 :goto_0

    .line 154
    :sswitch_d
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getConnectionUptime()I

    move-result v0

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 158
    goto/16 :goto_0

    .line 162
    :sswitch_e
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->clearConnectionStatistics()V

    move v0, v2

    .line 164
    goto/16 :goto_0

    .line 168
    :sswitch_f
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IHttpRequestCallback;

    move-result-object v1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 175
    goto/16 :goto_0

    .line 179
    :sswitch_10
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->sendHeartbeat()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 182
    goto/16 :goto_0

    .line 43
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
