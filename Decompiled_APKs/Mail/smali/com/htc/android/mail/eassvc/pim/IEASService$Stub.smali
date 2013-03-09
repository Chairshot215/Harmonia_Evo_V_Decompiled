.class public abstract Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;
.super Landroid/os/Binder;
.source "IEASService.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/pim/IEASService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/IEASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/pim/IEASService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.android.mail.eassvc.pim.IEASService"

.field static final TRANSACTION_EmptyFolderContents:I = 0x2d

.field static final TRANSACTION_StopAutoDiscover:I = 0x4

.field static final TRANSACTION_StopTestServer:I = 0x3

.field static final TRANSACTION_applyPolicy:I = 0x35

.field static final TRANSACTION_applySSLCertificate:I = 0x31

.field static final TRANSACTION_autoDiscover:I = 0x30

.field static final TRANSACTION_cancelErrorNotification:I = 0x1e

.field static final TRANSACTION_cancelMailOperation:I = 0x1f

.field static final TRANSACTION_cancelOof:I = 0x25

.field static final TRANSACTION_cancelSearchGlobalMail:I = 0x24

.field static final TRANSACTION_cancelSync:I = 0x1b

.field static final TRANSACTION_cancelSyncSource:I = 0x1c

.field static final TRANSACTION_cancelSyncSourceByMode:I = 0x1d

.field static final TRANSACTION_deleteExchangeAccount:I = 0x6

.field static final TRANSACTION_deleteExchangeRemainDatas:I = 0x5

.field static final TRANSACTION_enableSyncSource:I = 0x9

.field static final TRANSACTION_fetchMailItem:I = 0x2a

.field static final TRANSACTION_getAccountCount:I = 0x39

.field static final TRANSACTION_getAccountId:I = 0x1

.field static final TRANSACTION_getAccountInfo:I = 0x38

.field static final TRANSACTION_getAttachment:I = 0x29

.field static final TRANSACTION_getDefaultErrorCode:I = 0x8

.field static final TRANSACTION_getDefaultSyncMailBoxs:I = 0x3d

.field static final TRANSACTION_getErrorMessage:I = 0x7

.field static final TRANSACTION_getExchangeAccountInfo:I = 0x42

.field static final TRANSACTION_getLastSyncInfo:I = 0xb

.field static final TRANSACTION_getMailboxList:I = 0x3e

.field static final TRANSACTION_getMailboxRefreshing:I = 0x34

.field static final TRANSACTION_getOof:I = 0x27

.field static final TRANSACTION_getPhoneStatus:I = 0x20

.field static final TRANSACTION_getProgressing:I = 0x13

.field static final TRANSACTION_getProvisionDoc:I = 0x3b

.field static final TRANSACTION_getScheduleOption:I = 0xf

.field static final TRANSACTION_getServerProtocol:I = 0x2f

.field static final TRANSACTION_getSyncOptions:I = 0xc

.field static final TRANSACTION_isAlive:I = 0x11

.field static final TRANSACTION_isAnyAccountProvision:I = 0x3f

.field static final TRANSACTION_isAttachDownloading:I = 0x2e

.field static final TRANSACTION_isBusy:I = 0x12

.field static final TRANSACTION_isConnWhileRoaming:I = 0x21

.field static final TRANSACTION_isSendingMail:I = 0x22

.field static final TRANSACTION_isSyncSourceEnabled:I = 0xa

.field static final TRANSACTION_isSyncSourceRunning:I = 0x36

.field static final TRANSACTION_isTaskFOTA:I = 0x43

.field static final TRANSACTION_meetingResp:I = 0x2b

.field static final TRANSACTION_moveMail:I = 0x2c

.field static final TRANSACTION_registerCallback:I = 0x32

.field static final TRANSACTION_resendSyncEvent:I = 0x10

.field static final TRANSACTION_resetAdminPolicy:I = 0x41

.field static final TRANSACTION_searchGAL:I = 0x40

.field static final TRANSACTION_searchGlobalMail:I = 0x23

.field static final TRANSACTION_sendMail:I = 0x28

.field static final TRANSACTION_setDefaultSyncMailbox:I = 0x3c

.field static final TRANSACTION_setMailFilterType:I = 0xd

.field static final TRANSACTION_setOof:I = 0x26

.field static final TRANSACTION_setSyncOptions:I = 0xe

.field static final TRANSACTION_startSync:I = 0x14

.field static final TRANSACTION_syncCalendar:I = 0x16

.field static final TRANSACTION_syncContacts:I = 0x15

.field static final TRANSACTION_syncMail:I = 0x18

.field static final TRANSACTION_syncMailbox:I = 0x19

.field static final TRANSACTION_syncMailboxs:I = 0x1a

.field static final TRANSACTION_syncTasks:I = 0x17

.field static final TRANSACTION_testServer:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x33

.field static final TRANSACTION_updateAccountInfo:I = 0x37

.field static final TRANSACTION_waitForSyncComplete:I = 0x3a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.android.mail.eassvc.pim.IEASService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;
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
    const-string v1, "com.htc.android.mail.eassvc.pim.IEASService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/android/mail/eassvc/pim/IEASService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 859
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getAccountId(Ljava/lang/String;)J

    move-result-wide v22

    .line 51
    .local v22, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 57
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v22           #_result:J
    :sswitch_2
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 66
    .local v4, _arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 67
    .local v6, _arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)I

    move-result v22

    .line 68
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v3, 0x1

    goto :goto_0

    .line 63
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v6           #_arg1:J
    .end local v22           #_result:I
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    goto :goto_1

    .line 74
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :sswitch_3
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->StopTestServer()V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->StopAutoDiscover()V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v3, 0x1

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->deleteExchangeRemainDatas()Z

    move-result v22

    .line 90
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v22, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 91
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 96
    .end local v22           #_result:Z
    :sswitch_6
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 99
    .local v4, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->deleteExchangeAccount(J)Z

    move-result v22

    .line 100
    .restart local v22       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v22, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 101
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 106
    .end local v4           #_arg0:J
    .end local v22           #_result:Z
    :sswitch_7
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 109
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v22

    .line 110
    .local v22, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 116
    .end local v4           #_arg0:I
    .end local v22           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getDefaultErrorCode()I

    move-result v22

    .line 118
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v22           #_result:I
    :sswitch_9
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 128
    .local v4, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 130
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v8, 0x1

    .line 131
    .local v8, _arg2:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->enableSyncSource(JIZ)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 130
    .end local v8           #_arg2:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 137
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    :sswitch_a
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 141
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isSyncSourceEnabled(JI)Z

    move-result v22

    .line 143
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v22, :cond_4

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 144
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 149
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    .end local v22           #_result:Z
    :sswitch_b
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 152
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getLastSyncInfo(J)Ljava/util/List;

    move-result-object v24

    .line 153
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 155
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 159
    .end local v4           #_arg0:J
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    :sswitch_c
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 162
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v22

    .line 163
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v22, :cond_5

    .line 165
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/EASOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 169
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 175
    .end local v4           #_arg0:J
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :sswitch_d
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 179
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 180
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->setMailFilterType(JI)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 186
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    :sswitch_e
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 190
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 196
    .local v6, _arg1:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 194
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    goto :goto_7

    .line 202
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :sswitch_f
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 205
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getScheduleOption(J)I

    move-result v22

    .line 206
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 212
    .end local v4           #_arg0:J
    .end local v22           #_result:I
    :sswitch_10
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 215
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->resendSyncEvent(J)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 221
    .end local v4           #_arg0:J
    :sswitch_11
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isAlive()Z

    move-result v22

    .line 223
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v22, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 224
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 229
    .end local v22           #_result:Z
    :sswitch_12
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 232
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isBusy(J)Z

    move-result v22

    .line 233
    .restart local v22       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v22, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 234
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 239
    .end local v4           #_arg0:J
    .end local v22           #_result:Z
    :sswitch_13
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getProgressing()I

    move-result v22

    .line 241
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 247
    .end local v22           #_result:I
    :sswitch_14
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 250
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->startSync(J)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 256
    .end local v4           #_arg0:J
    :sswitch_15
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 259
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncContacts(J)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 265
    .end local v4           #_arg0:J
    :sswitch_16
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 268
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncCalendar(J)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 274
    .end local v4           #_arg0:J
    :sswitch_17
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 278
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    .line 279
    .local v6, _arg1:Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncTasks(JZ)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 278
    .end local v6           #_arg1:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    .line 285
    .end local v4           #_arg0:J
    :sswitch_18
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 288
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncMail(J)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 294
    .end local v4           #_arg0:J
    :sswitch_19
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 298
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 301
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 306
    .local v8, _arg2:Landroid/os/Bundle;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 304
    .end local v8           #_arg2:Landroid/os/Bundle;
    :cond_a
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_b

    .line 312
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Landroid/os/Bundle;
    :sswitch_1a
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 316
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, _arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 319
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 324
    .restart local v8       #_arg2:Landroid/os/Bundle;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->syncMailboxs(J[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 322
    .end local v8           #_arg2:Landroid/os/Bundle;
    :cond_b
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_c

    .line 330
    .end local v4           #_arg0:J
    .end local v6           #_arg1:[Ljava/lang/String;
    .end local v8           #_arg2:Landroid/os/Bundle;
    :sswitch_1b
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 333
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelSync(J)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 339
    .end local v4           #_arg0:J
    :sswitch_1c
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 343
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 344
    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelSyncSource(JI)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 350
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    :sswitch_1d
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 354
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 356
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 357
    .local v8, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelSyncSourceByMode(JII)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    .end local v8           #_arg2:I
    :sswitch_1e
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 366
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelErrorNotification(J)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4           #_arg0:J
    :sswitch_1f
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 376
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 378
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelMailOperation(JILjava/lang/String;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Ljava/lang/String;
    :sswitch_20
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getPhoneStatus()I

    move-result v22

    .line 387
    .restart local v22       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 393
    .end local v22           #_result:I
    :sswitch_21
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 396
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isConnWhileRoaming(J)Z

    move-result v22

    .line 397
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v22, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 398
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 403
    .end local v4           #_arg0:J
    .end local v22           #_result:Z
    :sswitch_22
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 406
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isSendingMail(J)Z

    move-result v22

    .line 407
    .restart local v22       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v22, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 408
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 413
    .end local v4           #_arg0:J
    .end local v22           #_result:Z
    :sswitch_23
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 417
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 418
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;

    .line 424
    .local v6, _arg1:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    .line 425
    .local v8, _arg2:Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->searchGlobalMail(JLcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    move-result-object v22

    .line 426
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v22, :cond_10

    .line 428
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 434
    :goto_11
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 421
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    .end local v8           #_arg2:Z
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :cond_e
    const/4 v6, 0x0

    .restart local v6       #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    goto :goto_f

    .line 424
    :cond_f
    const/4 v8, 0x0

    goto :goto_10

    .line 432
    .restart local v8       #_arg2:Z
    .restart local v22       #_result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 438
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    .end local v8           #_arg2:Z
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :sswitch_24
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 441
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelSearchGlobalMail(J)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 447
    .end local v4           #_arg0:J
    :sswitch_25
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 450
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->cancelOof(J)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 456
    .end local v4           #_arg0:J
    :sswitch_26
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 460
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 461
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    .line 466
    .local v6, _arg1:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->setOof(JLcom/htc/android/mail/eassvc/pim/EASOofRequest;)I

    move-result v22

    .line 467
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 464
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    .end local v22           #_result:I
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    goto :goto_12

    .line 473
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :sswitch_27
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 477
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getOof(JLjava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    move-result-object v22

    .line 479
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v22, :cond_12

    .line 481
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 487
    :goto_13
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 485
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 491
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    :sswitch_28
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 495
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 498
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .line 503
    .local v8, _arg2:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->sendMail(JILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 501
    .end local v8           #_arg2:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :cond_13
    const/4 v8, 0x0

    .restart local v8       #_arg2:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    goto :goto_14

    .line 509
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :sswitch_29
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 513
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 515
    .local v6, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 519
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    const/4 v10, 0x1

    .line 521
    .local v10, _arg4:Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v3, p0

    .line 522
    invoke-virtual/range {v3 .. v11}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getAttachment(JJLjava/lang/String;Ljava/lang/String;ZI)I

    move-result v22

    .line 523
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 519
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:I
    .end local v22           #_result:I
    :cond_14
    const/4 v10, 0x0

    goto :goto_15

    .line 529
    .end local v4           #_arg0:J
    .end local v6           #_arg1:J
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 533
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 535
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 537
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 539
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 541
    .local v18, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 543
    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    const/16 v21, 0x1

    .local v21, _arg6:Z
    :goto_16
    move-object/from16 v12, p0

    move-wide v13, v4

    move-object v15, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v20, v11

    .line 544
    invoke-virtual/range {v12 .. v21}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I

    move-result v22

    .line 545
    .restart local v22       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 543
    .end local v21           #_arg6:Z
    .end local v22           #_result:I
    :cond_15
    const/16 v21, 0x0

    goto :goto_16

    .line 551
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:I
    .end local v11           #_arg5:I
    .end local v18           #_arg4:J
    :sswitch_2b
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 555
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 557
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 559
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg3:I
    move-object/from16 v12, p0

    move-wide v13, v4

    move-object v15, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    .line 560
    invoke-virtual/range {v12 .. v17}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->meetingResp(JLjava/lang/String;Ljava/lang/String;I)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 566
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:I
    :sswitch_2c
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 570
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 571
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    .line 576
    .local v6, _arg1:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->moveMail(JLcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z

    move-result v22

    .line 577
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v22, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 574
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v22           #_result:Z
    :cond_16
    const/4 v6, 0x0

    .restart local v6       #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    goto :goto_17

    .line 578
    .restart local v22       #_result:Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 583
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v22           #_result:Z
    :sswitch_2d
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 587
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v8, 0x1

    .line 590
    .local v8, _arg2:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->EmptyFolderContents(JLjava/lang/String;Z)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 589
    .end local v8           #_arg2:Z
    :cond_18
    const/4 v8, 0x0

    goto :goto_19

    .line 596
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 600
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 601
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isAttachDownloading(JLjava/lang/String;)Z

    move-result v22

    .line 602
    .restart local v22       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v22, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 603
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 608
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v22           #_result:Z
    :sswitch_2f
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 611
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getServerProtocol(J)D

    move-result-wide v22

    .line 612
    .local v22, _result:D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 614
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 618
    .end local v4           #_arg0:J
    .end local v22           #_result:D
    :sswitch_30
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 624
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 626
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 627
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 628
    .local v22, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v22, :cond_1a

    .line 630
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    :goto_1b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 634
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 640
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v22           #_result:Landroid/os/Bundle;
    :sswitch_31
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 644
    .local v4, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 645
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->applySSLCertificate(JLjava/lang/String;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 651
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_32
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    move-result-object v4

    .line 654
    .local v4, _arg0:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 660
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    :sswitch_33
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    move-result-object v4

    .line 663
    .restart local v4       #_arg0:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 669
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    :sswitch_34
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 672
    .local v4, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v22

    .line 673
    .local v22, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 679
    .end local v4           #_arg0:J
    .end local v22           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 682
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 687
    .local v4, _arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->applyPolicy(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 685
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_1b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    goto :goto_1c

    .line 693
    .end local v4           #_arg0:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :sswitch_36
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 697
    .local v4, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 698
    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isSyncSourceRunning(JI)Z

    move-result v22

    .line 699
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v22, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 700
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 705
    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    .end local v22           #_result:Z
    :sswitch_37
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 709
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 710
    sget-object v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 715
    .local v6, _arg1:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->updateAccountInfo(JLcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 713
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_1d
    const/4 v6, 0x0

    .restart local v6       #_arg1:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    goto :goto_1e

    .line 721
    .end local v4           #_arg0:J
    .end local v6           #_arg1:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :sswitch_38
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 724
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v22

    .line 725
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    if-eqz v22, :cond_1e

    .line 727
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    :goto_1f
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 731
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 737
    .end local v4           #_arg0:J
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :sswitch_39
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getAccountCount()I

    move-result v22

    .line 739
    .local v22, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 745
    .end local v22           #_result:I
    :sswitch_3a
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 748
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->waitForSyncComplete(J)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 754
    .end local v4           #_arg0:J
    :sswitch_3b
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 757
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getProvisionDoc(J)Landroid/os/Bundle;

    move-result-object v22

    .line 758
    .local v22, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v22, :cond_1f

    .line 760
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 766
    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 764
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 770
    .end local v4           #_arg0:J
    .end local v22           #_result:Landroid/os/Bundle;
    :sswitch_3c
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 774
    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, _arg1:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->setDefaultSyncMailbox(J[Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 781
    .end local v4           #_arg0:J
    .end local v6           #_arg1:[Ljava/lang/String;
    :sswitch_3d
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 784
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getDefaultSyncMailBoxs(J)[Ljava/lang/String;

    move-result-object v22

    .line 785
    .local v22, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 787
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 791
    .end local v4           #_arg0:J
    .end local v22           #_result:[Ljava/lang/String;
    :sswitch_3e
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 794
    .restart local v4       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getMailboxList(J)[Lcom/htc/android/mail/eassvc/pim/EASMailbox;

    move-result-object v22

    .line 795
    .local v22, _result:[Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 797
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 801
    .end local v4           #_arg0:J
    .end local v22           #_result:[Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    :sswitch_3f
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isAnyAccountProvision()Z

    move-result v22

    .line 803
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v22, :cond_20

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 804
    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    .line 809
    .end local v22           #_result:Z
    :sswitch_40
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    move-result-object v22

    .line 815
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v22, :cond_21

    .line 817
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_22
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 821
    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 827
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    :sswitch_41
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->resetAdminPolicy()V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 834
    :sswitch_42
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 837
    .local v4, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v22

    .line 838
    .local v22, _result:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    if-eqz v22, :cond_22

    .line 840
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 846
    :goto_23
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 844
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 850
    .end local v4           #_arg0:J
    .end local v22           #_result:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    :sswitch_43
    const-string v3, "com.htc.android.mail.eassvc.pim.IEASService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->isTaskFOTA(Ljava/lang/String;)Z

    move-result v22

    .line 854
    .local v22, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v22, :cond_23

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 855
    :cond_23
    const/4 v3, 0x0

    goto :goto_24

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
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
