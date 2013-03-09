.class public abstract Lcom/google/android/gtalkservice/IChatListener$Stub;
.super Landroid/os/Binder;
.source "IChatListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IChatListener"

.field static final TRANSACTION_chatClosed:I = 0x4

.field static final TRANSACTION_chatRead:I = 0x3

.field static final TRANSACTION_convertedToGroupChat:I = 0x5

.field static final TRANSACTION_newMessageReceived:I = 0x1

.field static final TRANSACTION_newMessageSent:I = 0x2

.field static final TRANSACTION_participantJoined:I = 0x6

.field static final TRANSACTION_participantLeft:I = 0x7

.field static final TRANSACTION_useLightweightNotify:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;
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
    const-string v1, "com.google.android.gtalkservice.IChatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gtalkservice/IChatListener;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IChatListener;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v4

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->newMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 59
    goto :goto_0

    .line 63
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->newMessageSent(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 68
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->chatRead(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 77
    goto :goto_0

    .line 81
    :sswitch_4
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->chatClosed(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 86
    goto :goto_0

    .line 90
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 97
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IChatListener$Stub;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 99
    goto :goto_0

    .line 103
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->participantJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 110
    goto :goto_0

    .line 114
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->participantLeft(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 121
    goto/16 :goto_0

    .line 125
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->useLightweightNotify()Z

    move-result v0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v0, :cond_0

    move v0, v4

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v4

    .line 129
    goto/16 :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
