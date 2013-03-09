.class public abstract Lcom/google/android/gtalkservice/IImSession$Stub;
.super Landroid/os/Binder;
.source "IImSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IImSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IImSession"

.field static final TRANSACTION_addConnectionStateListener:I = 0x7

.field static final TRANSACTION_addContact:I = 0xd

.field static final TRANSACTION_addGroupChatInvitationListener:I = 0x1b

.field static final TRANSACTION_addRemoteChatListener:I = 0x1d

.field static final TRANSACTION_addRemoteRosterListener:I = 0x1f

.field static final TRANSACTION_approveSubscriptionRequest:I = 0x14

.field static final TRANSACTION_blockContact:I = 0x10

.field static final TRANSACTION_clearContactFlags:I = 0x13

.field static final TRANSACTION_closeAllChatSessions:I = 0x24

.field static final TRANSACTION_createChatSession:I = 0x16

.field static final TRANSACTION_createGroupChatSession:I = 0x18

.field static final TRANSACTION_declineGroupChatInvitation:I = 0x1a

.field static final TRANSACTION_declineSubscriptionRequest:I = 0x15

.field static final TRANSACTION_editContact:I = 0xe

.field static final TRANSACTION_getAccountId:I = 0x2

.field static final TRANSACTION_getChatSession:I = 0x17

.field static final TRANSACTION_getConnectionState:I = 0x6

.field static final TRANSACTION_getPresence:I = 0xa

.field static final TRANSACTION_getServiceProviderId:I = 0x1

.field static final TRANSACTION_getUsername:I = 0x3

.field static final TRANSACTION_goOffRecordInRoom:I = 0x22

.field static final TRANSACTION_goOffRecordWithContacts:I = 0x21

.field static final TRANSACTION_hideContact:I = 0x12

.field static final TRANSACTION_isOffRecordWithContact:I = 0x23

.field static final TRANSACTION_joinGroupChatSession:I = 0x19

.field static final TRANSACTION_login:I = 0x4

.field static final TRANSACTION_logout:I = 0x5

.field static final TRANSACTION_pinContact:I = 0x11

.field static final TRANSACTION_pruneOldChatSessions:I = 0x25

.field static final TRANSACTION_removeConnectionStateListener:I = 0x8

.field static final TRANSACTION_removeContact:I = 0xf

.field static final TRANSACTION_removeGroupChatInvitationListener:I = 0x1c

.field static final TRANSACTION_removeRemoteChatListener:I = 0x1e

.field static final TRANSACTION_removeRemoteRosterListener:I = 0x20

.field static final TRANSACTION_setPresence:I = 0x9

.field static final TRANSACTION_uploadAvatar:I = 0xb

.field static final TRANSACTION_uploadAvatarFromDb:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IImSession;
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
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gtalkservice/IImSession;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IImSession;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v4

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getServiceProviderId()J

    move-result-wide v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v4

    .line 56
    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getAccountId()J

    move-result-wide v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v4

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v4

    .line 72
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 83
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->login(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v4

    .line 84
    goto :goto_0

    :cond_0
    move v2, v3

    .line 82
    goto :goto_1

    .line 88
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->logout()V

    move v0, v4

    .line 90
    goto :goto_0

    .line 94
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v0, p3, v4}, Lcom/google/android/gtalkservice/ConnectionState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v4

    .line 104
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 108
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 113
    goto/16 :goto_0

    .line 117
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 122
    goto/16 :goto_0

    .line 126
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence;

    .line 134
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 136
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 132
    goto :goto_3

    .line 140
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p3, v4}, Lcom/google/android/gtalkservice/Presence;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v4

    .line 150
    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 154
    :sswitch_b
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 162
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatar(Landroid/graphics/Bitmap;)V

    move v0, v4

    .line 163
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 160
    goto :goto_5

    .line 167
    :sswitch_c
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatarFromDb()V

    move v0, v4

    .line 169
    goto/16 :goto_0

    .line 173
    :sswitch_d
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v0, v4

    .line 181
    goto/16 :goto_0

    .line 185
    :sswitch_e
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v0, v4

    .line 193
    goto/16 :goto_0

    .line 197
    :sswitch_f
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeContact(Ljava/lang/String;)V

    move v0, v4

    .line 201
    goto/16 :goto_0

    .line 205
    :sswitch_10
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->blockContact(Ljava/lang/String;)V

    move v0, v4

    .line 209
    goto/16 :goto_0

    .line 213
    :sswitch_11
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->pinContact(Ljava/lang/String;)V

    move v0, v4

    .line 217
    goto/16 :goto_0

    .line 221
    :sswitch_12
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->hideContact(Ljava/lang/String;)V

    move v0, v4

    .line 225
    goto/16 :goto_0

    .line 229
    :sswitch_13
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->clearContactFlags(Ljava/lang/String;)V

    move v0, v4

    .line 233
    goto/16 :goto_0

    .line 237
    :sswitch_14
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v0, v4

    .line 245
    goto/16 :goto_0

    .line 249
    :sswitch_15
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineSubscriptionRequest(Ljava/lang/String;)V

    move v0, v4

    .line 253
    goto/16 :goto_0

    .line 257
    :sswitch_16
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v4

    .line 263
    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 262
    goto :goto_6

    .line 267
    :sswitch_17
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v4

    .line 273
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 272
    goto :goto_7

    .line 277
    :sswitch_18
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IImSession$Stub;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 284
    goto/16 :goto_0

    .line 288
    :sswitch_19
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 297
    goto/16 :goto_0

    .line 301
    :sswitch_1a
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 308
    goto/16 :goto_0

    .line 312
    :sswitch_1b
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 317
    goto/16 :goto_0

    .line 321
    :sswitch_1c
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 326
    goto/16 :goto_0

    .line 330
    :sswitch_1d
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 335
    goto/16 :goto_0

    .line 339
    :sswitch_1e
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 344
    goto/16 :goto_0

    .line 348
    :sswitch_1f
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 353
    goto/16 :goto_0

    .line 357
    :sswitch_20
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 362
    goto/16 :goto_0

    .line 366
    :sswitch_21
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 369
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    .line 372
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordWithContacts(Ljava/util/List;Z)V

    move v0, v4

    .line 373
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 371
    goto :goto_8

    .line 377
    :sswitch_22
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    .line 382
    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    .line 384
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 381
    goto :goto_9

    .line 388
    :sswitch_23
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->isOffRecordWithContact(Ljava/lang/String;)Z

    move-result v0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v0, :cond_9

    move v0, v4

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v4

    .line 394
    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 393
    goto :goto_a

    .line 398
    :sswitch_24
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->closeAllChatSessions()V

    move v0, v4

    .line 400
    goto/16 :goto_0

    .line 404
    :sswitch_25
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 409
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->pruneOldChatSessions(JJ)V

    move v0, v4

    .line 410
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
