.class public abstract Lcom/google/android/gtalkservice/IChatSession$Stub;
.super Landroid/os/Binder;
.source "IChatSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IChatSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IChatSession"

.field static final TRANSACTION_addRemoteChatListener:I = 0x9

.field static final TRANSACTION_getParticipants:I = 0x3

.field static final TRANSACTION_getUnsentComposedMessage:I = 0x8

.field static final TRANSACTION_inviteContact:I = 0x4

.field static final TRANSACTION_isGroupChat:I = 0x1

.field static final TRANSACTION_isOffTheRecord:I = 0xb

.field static final TRANSACTION_leave:I = 0x5

.field static final TRANSACTION_markAsRead:I = 0x2

.field static final TRANSACTION_removeRemoteChatListener:I = 0xa

.field static final TRANSACTION_saveUnsentComposedMessage:I = 0x7

.field static final TRANSACTION_sendChatMessage:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 3
    .parameter

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "com.google.android.gtalkservice.IChatSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v2, :cond_1

    .line 34
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IChatSession;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isGroupChat()Z

    move-result v0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 57
    goto :goto_0

    :cond_0
    move v0, v2

    .line 56
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->markAsRead()V

    move v0, v1

    .line 63
    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getParticipants()[Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->inviteContact(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 80
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->leave()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 87
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->sendChatMessage(Ljava/lang/String;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 99
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->saveUnsentComposedMessage(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 104
    goto :goto_0

    .line 108
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 116
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 125
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 130
    goto/16 :goto_0

    .line 134
    :sswitch_b
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isOffTheRecord()Z

    move-result v0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 138
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 137
    goto :goto_2

    .line 44
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
