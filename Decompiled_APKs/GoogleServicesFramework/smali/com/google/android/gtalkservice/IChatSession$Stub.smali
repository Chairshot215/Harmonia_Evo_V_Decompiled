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
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.google.android.gtalkservice.IChatSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/android/gtalkservice/IChatSession;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 48
    :sswitch_0
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v7, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isGroupChat()Z

    move-result v4

    .line 55
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v4           #_result:Z
    :sswitch_2
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->markAsRead()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getParticipants()[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->inviteContact(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->leave()V

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->sendChatMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->saveUnsentComposedMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 116
    .local v0, _arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_a
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 125
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_b
    const-string v7, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isOffTheRecord()Z

    move-result v4

    .line 133
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v4           #_result:Z
    :sswitch_c
    const-string v7, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getLightweightNotify()Z

    move-result v4

    .line 141
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v4           #_result:Z
    :sswitch_d
    const-string v7, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    .line 153
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IChatSession$Stub;->reportEndCause(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :cond_3
    move v1, v5

    .line 151
    goto :goto_1

    .line 159
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v7, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    .line 167
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v3, v6

    .line 168
    .local v3, _arg3:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IChatSession$Stub;->reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    :cond_4
    move v2, v5

    .line 165
    goto :goto_2

    .restart local v2       #_arg2:Z
    :cond_5
    move v3, v5

    .line 167
    goto :goto_3

    .line 173
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    :sswitch_f
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->ensureNonZeroLastMessageDate()V

    goto/16 :goto_0

    .line 179
    :sswitch_10
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 182
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 187
    .local v0, _arg0:Landroid/net/Uri;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->clearChatHistory(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 185
    .end local v0           #_arg0:Landroid/net/Uri;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_4

    .line 44
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
