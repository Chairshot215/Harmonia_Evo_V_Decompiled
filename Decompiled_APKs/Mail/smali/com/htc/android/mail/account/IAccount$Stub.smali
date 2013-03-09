.class public abstract Lcom/htc/android/mail/account/IAccount$Stub;
.super Landroid/os/Binder;
.source "IAccount.java"

# interfaces
.implements Lcom/htc/android/mail/account/IAccount;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/account/IAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/account/IAccount$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.android.mail.account.IAccount"

.field static final TRANSACTION_alwaysbccMyself:I = 0x43

.field static final TRANSACTION_askBeforeDelete:I = 0x26

.field static final TRANSACTION_clearMails:I = 0x1e

.field static final TRANSACTION_commit:I = 0x6e

.field static final TRANSACTION_commitMailboxChanges:I = 0x72

.field static final TRANSACTION_delete:I = 0x6a

.field static final TRANSACTION_deleteFromServer:I = 0x22

.field static final TRANSACTION_enableSDsave:I = 0x20

.field static final TRANSACTION_getCheckFreq:I = 0x24

.field static final TRANSACTION_getColorGroupIdx:I = 0x62

.field static final TRANSACTION_getColorIdx:I = 0x63

.field static final TRANSACTION_getContactGroup:I = 0x61

.field static final TRANSACTION_getDefaultFolderId:I = 0x2e

.field static final TRANSACTION_getDelStatus:I = 0x4b

.field static final TRANSACTION_getDesc:I = 0x35

.field static final TRANSACTION_getDownloadMessageWhenScroll:I = 0x53

.field static final TRANSACTION_getDraftFolderId:I = 0x31

.field static final TRANSACTION_getEASDomain:I = 0x54

.field static final TRANSACTION_getEasSvrProtocol:I = 0x67

.field static final TRANSACTION_getEmailAddress:I = 0x3

.field static final TRANSACTION_getFetchMailDays:I = 0x1c

.field static final TRANSACTION_getFetchMailDaysIndex:I = 0x49

.field static final TRANSACTION_getFetchMailNum:I = 0x19

.field static final TRANSACTION_getFetchMailNumIndex:I = 0x47

.field static final TRANSACTION_getFetchMailType:I = 0x1b

.field static final TRANSACTION_getFontsize:I = 0x41

.field static final TRANSACTION_getId:I = 0x1

.field static final TRANSACTION_getInPort:I = 0xc

.field static final TRANSACTION_getInServer:I = 0xb

.field static final TRANSACTION_getLastFetchTagsTime:I = 0x75

.field static final TRANSACTION_getLastupdatetime:I = 0x34

.field static final TRANSACTION_getMailboxs:I = 0x2d

.field static final TRANSACTION_getName:I = 0x2

.field static final TRANSACTION_getOutFolderId:I = 0x32

.field static final TRANSACTION_getOutPort:I = 0xf

.field static final TRANSACTION_getOutServer:I = 0xd

.field static final TRANSACTION_getOutpassword:I = 0x9

.field static final TRANSACTION_getOutuserName:I = 0x8

.field static final TRANSACTION_getPassword:I = 0x6

.field static final TRANSACTION_getPeakDays:I = 0x57

.field static final TRANSACTION_getPeakTimeEnd:I = 0x5f

.field static final TRANSACTION_getPeakTimeStart:I = 0x5d

.field static final TRANSACTION_getPollQuantum:I = 0x28

.field static final TRANSACTION_getPreviewLineNum:I = 0x70

.field static final TRANSACTION_getProtocol:I = 0xa

.field static final TRANSACTION_getProvider:I = 0x29

.field static final TRANSACTION_getProviderGroup:I = 0x64

.field static final TRANSACTION_getProviderid:I = 0x2a

.field static final TRANSACTION_getSentFolderId:I = 0x30

.field static final TRANSACTION_getSignature:I = 0x15

.field static final TRANSACTION_getSizeLimit:I = 0x18

.field static final TRANSACTION_getSizeLimitIndex:I = 0x17

.field static final TRANSACTION_getSortBy:I = 0x3c

.field static final TRANSACTION_getSortColumn:I = 0x4d

.field static final TRANSACTION_getSortOrder:I = 0x4f

.field static final TRANSACTION_getSyncSchedulePeakOff:I = 0x5b

.field static final TRANSACTION_getSyncSchedulePeakOn:I = 0x59

.field static final TRANSACTION_getTrashFolderId:I = 0x2f

.field static final TRANSACTION_getUseSSLin:I = 0x10

.field static final TRANSACTION_getUseSSLout:I = 0x11

.field static final TRANSACTION_getUseSignature:I = 0x13

.field static final TRANSACTION_getUserName:I = 0x5

.field static final TRANSACTION_isAdditionalSyncWhenErrorEnabled:I = 0x74

.field static final TRANSACTION_isChanged:I = 0x6b

.field static final TRANSACTION_isDefaultaccount:I = 0x3f

.field static final TRANSACTION_isIMAP4:I = 0x3d

.field static final TRANSACTION_needSmtpauth:I = 0x3a

.field static final TRANSACTION_refresh:I = 0x68

.field static final TRANSACTION_refreshMailOpenFolder:I = 0x51

.field static final TRANSACTION_reloadMailboxs:I = 0x69

.field static final TRANSACTION_replyWithText:I = 0x45

.field static final TRANSACTION_resetSyncAlarm:I = 0x6c

.field static final TRANSACTION_setAdditionalSyncWhenErrorEnabled:I = 0x73

.field static final TRANSACTION_setAlwaysbccMyself:I = 0x42

.field static final TRANSACTION_setAskBeforeDelete:I = 0x25

.field static final TRANSACTION_setCheckFreq:I = 0x23

.field static final TRANSACTION_setClearMails:I = 0x1d

.field static final TRANSACTION_setContactGroup:I = 0x60

.field static final TRANSACTION_setDefaultaccount:I = 0x3e

.field static final TRANSACTION_setDelStatus:I = 0x4a

.field static final TRANSACTION_setDeleteFromServer:I = 0x21

.field static final TRANSACTION_setDownloadMessageWhenScroll:I = 0x52

.field static final TRANSACTION_setEASDomain:I = 0x55

.field static final TRANSACTION_setEmailNotifications:I = 0x2b

.field static final TRANSACTION_setEnableSDsave:I = 0x1f

.field static final TRANSACTION_setFetchMailDaysIndex:I = 0x48

.field static final TRANSACTION_setFetchMailNumIndex:I = 0x46

.field static final TRANSACTION_setFetchMailType:I = 0x1a

.field static final TRANSACTION_setFontsize:I = 0x40

.field static final TRANSACTION_setLastFetchTagsTime:I = 0x76

.field static final TRANSACTION_setLastupdatetime:I = 0x33

.field static final TRANSACTION_setMailboxDefaultSyncEnabled:I = 0x71

.field static final TRANSACTION_setOutPort:I = 0xe

.field static final TRANSACTION_setOutuserName:I = 0x7

.field static final TRANSACTION_setPeakDays:I = 0x56

.field static final TRANSACTION_setPeakTimeEnd:I = 0x5e

.field static final TRANSACTION_setPeakTimeStart:I = 0x5c

.field static final TRANSACTION_setPollQuantum:I = 0x27

.field static final TRANSACTION_setPreviewLineNum:I = 0x6f

.field static final TRANSACTION_setRefreshMailOpenFolder:I = 0x50

.field static final TRANSACTION_setReplyWithText:I = 0x44

.field static final TRANSACTION_setSignature:I = 0x14

.field static final TRANSACTION_setSizeLimitIndex:I = 0x16

.field static final TRANSACTION_setSortBy:I = 0x3b

.field static final TRANSACTION_setSortColumn:I = 0x4c

.field static final TRANSACTION_setSortOrder:I = 0x4e

.field static final TRANSACTION_setSound:I = 0x36

.field static final TRANSACTION_setSyncSchedulePeakOff:I = 0x5a

.field static final TRANSACTION_setSyncSchedulePeakOn:I = 0x58

.field static final TRANSACTION_setSyncWithServer:I = 0x65

.field static final TRANSACTION_setUseSignature:I = 0x12

.field static final TRANSACTION_setUserName:I = 0x4

.field static final TRANSACTION_setVibrate:I = 0x38

.field static final TRANSACTION_showEmailNotifications:I = 0x2c

.field static final TRANSACTION_sound:I = 0x37

.field static final TRANSACTION_syncWithServer:I = 0x66

.field static final TRANSACTION_updateFetchTime:I = 0x6d

.field static final TRANSACTION_vibrate:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p0, p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/account/IAccount;
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
    const-string v1, "com.htc.android.mail.account.IAccount"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/android/mail/account/IAccount;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/android/mail/account/IAccount;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/android/mail/account/IAccount$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/android/mail/account/IAccount$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1031
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getId()J

    move-result-wide v3

    .line 49
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 55
    .end local v3           #_result:J
    :sswitch_2
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 65
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setUserName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setOutuserName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getOutuserName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getOutpassword()Ljava/lang/String;

    move-result-object v3

    .line 115
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getProtocol()I

    move-result v3

    .line 123
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v3           #_result:I
    :sswitch_b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getInServer()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getInPort()I

    move-result v3

    .line 139
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v3           #_result:I
    :sswitch_d
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getOutServer()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setOutPort(I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getOutPort()I

    move-result v3

    .line 164
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v3           #_result:I
    :sswitch_10
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getUseSSLin()I

    move-result v3

    .line 172
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v3           #_result:I
    :sswitch_11
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getUseSSLout()I

    move-result v3

    .line 180
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v3           #_result:I
    :sswitch_12
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setUseSignature(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v0           #_arg0:I
    :sswitch_13
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getUseSignature()I

    move-result v3

    .line 197
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v3           #_result:I
    :sswitch_14
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSignature(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_15
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSizeLimitIndex(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSizeLimitIndex()I

    move-result v3

    .line 231
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v3           #_result:I
    :sswitch_18
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSizeLimit()I

    move-result v3

    .line 239
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v3           #_result:I
    :sswitch_19
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFetchMailNum()I

    move-result v3

    .line 247
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v3           #_result:I
    :sswitch_1a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setFetchMailType(I)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFetchMailType()I

    move-result v3

    .line 264
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v3           #_result:I
    :sswitch_1c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFetchMailDays()I

    move-result v3

    .line 272
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v3           #_result:I
    :sswitch_1d
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 281
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setClearMails(Z)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v6

    .line 280
    goto :goto_1

    .line 287
    :sswitch_1e
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->clearMails()Z

    move-result v3

    .line 289
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v3, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v3           #_result:Z
    :sswitch_1f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setEnableSDsave(I)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    .end local v0           #_arg0:I
    :sswitch_20
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->enableSDsave()I

    move-result v3

    .line 306
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v3           #_result:I
    :sswitch_21
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setDeleteFromServer(I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    .end local v0           #_arg0:I
    :sswitch_22
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->deleteFromServer()I

    move-result v3

    .line 323
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v3           #_result:I
    :sswitch_23
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setCheckFreq(I)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 338
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getCheckFreq()I

    move-result v3

    .line 340
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v3           #_result:I
    :sswitch_25
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setAskBeforeDelete(I)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 355
    .end local v0           #_arg0:I
    :sswitch_26
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->askBeforeDelete()I

    move-result v3

    .line 357
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v3           #_result:I
    :sswitch_27
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->setPollQuantum()V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 370
    :sswitch_28
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPollQuantum()I

    move-result v3

    .line 372
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 378
    .end local v3           #_result:I
    :sswitch_29
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getProviderid()I

    move-result v3

    .line 388
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v3           #_result:I
    :sswitch_2b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setEmailNotifications(I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 403
    .end local v0           #_arg0:I
    :sswitch_2c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->showEmailNotifications()I

    move-result v3

    .line 405
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v3           #_result:I
    :sswitch_2d
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    .line 413
    .local v3, _result:Lcom/htc/android/mail/Mailboxs;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {v3, p3, v5}, Lcom/htc/android/mail/Mailboxs;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 419
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 425
    .end local v3           #_result:Lcom/htc/android/mail/Mailboxs;
    :sswitch_2e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getDefaultFolderId()J

    move-result-wide v3

    .line 427
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 433
    .end local v3           #_result:J
    :sswitch_2f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getTrashFolderId()J

    move-result-wide v3

    .line 435
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 441
    .end local v3           #_result:J
    :sswitch_30
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSentFolderId()J

    move-result-wide v3

    .line 443
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 449
    .end local v3           #_result:J
    :sswitch_31
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getDraftFolderId()J

    move-result-wide v3

    .line 451
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 457
    .end local v3           #_result:J
    :sswitch_32
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getOutFolderId()J

    move-result-wide v3

    .line 459
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 465
    .end local v3           #_result:J
    :sswitch_33
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 468
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/account/IAccount$Stub;->setLastupdatetime(J)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 474
    .end local v0           #_arg0:J
    :sswitch_34
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getLastupdatetime()J

    move-result-wide v3

    .line 476
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 482
    .end local v3           #_result:J
    :sswitch_35
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getDesc()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSound(I)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 499
    .end local v0           #_arg0:I
    :sswitch_37
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->sound()I

    move-result v3

    .line 501
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 507
    .end local v3           #_result:I
    :sswitch_38
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setVibrate(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 516
    .end local v0           #_arg0:I
    :sswitch_39
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->vibrate()I

    move-result v3

    .line 518
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 524
    .end local v3           #_result:I
    :sswitch_3a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->needSmtpauth()I

    move-result v3

    .line 526
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v3           #_result:I
    :sswitch_3b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSortBy(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 541
    .end local v0           #_arg0:I
    :sswitch_3c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSortBy()I

    move-result v3

    .line 543
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 549
    .end local v3           #_result:I
    :sswitch_3d
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->isIMAP4()Z

    move-result v3

    .line 551
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v3, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 557
    .end local v3           #_result:Z
    :sswitch_3e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setDefaultaccount(I)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 566
    .end local v0           #_arg0:I
    :sswitch_3f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->isDefaultaccount()I

    move-result v3

    .line 568
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 574
    .end local v3           #_result:I
    :sswitch_40
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setFontsize(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 583
    .end local v0           #_arg0:I
    :sswitch_41
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFontsize()I

    move-result v3

    .line 585
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 591
    .end local v3           #_result:I
    :sswitch_42
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setAlwaysbccMyself(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 600
    .end local v0           #_arg0:I
    :sswitch_43
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->alwaysbccMyself()I

    move-result v3

    .line 602
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 608
    .end local v3           #_result:I
    :sswitch_44
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 611
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setReplyWithText(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 617
    .end local v0           #_arg0:I
    :sswitch_45
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->replyWithText()I

    move-result v3

    .line 619
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 625
    .end local v3           #_result:I
    :sswitch_46
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setFetchMailNumIndex(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 634
    .end local v0           #_arg0:I
    :sswitch_47
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFetchMailNumIndex()I

    move-result v3

    .line 636
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 642
    .end local v3           #_result:I
    :sswitch_48
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 645
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setFetchMailDaysIndex(I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 651
    .end local v0           #_arg0:I
    :sswitch_49
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getFetchMailDaysIndex()I

    move-result v3

    .line 653
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 659
    .end local v3           #_result:I
    :sswitch_4a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setDelStatus(I)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 668
    .end local v0           #_arg0:I
    :sswitch_4b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getDelStatus()I

    move-result v3

    .line 670
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 676
    .end local v3           #_result:I
    :sswitch_4c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSortColumn(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 685
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4d
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSortColumn()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_4e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSortOrder(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 702
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 704
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_50
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 713
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setRefreshMailOpenFolder(Z)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v6

    .line 712
    goto :goto_2

    .line 719
    :sswitch_51
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->refreshMailOpenFolder()Z

    move-result v3

    .line 721
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    if-eqz v3, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 727
    .end local v3           #_result:Z
    :sswitch_52
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v5

    .line 730
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setDownloadMessageWhenScroll(Z)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v6

    .line 729
    goto :goto_3

    .line 736
    :sswitch_53
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getDownloadMessageWhenScroll()Z

    move-result v3

    .line 738
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    if-eqz v3, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 744
    .end local v3           #_result:Z
    :sswitch_54
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getEASDomain()Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_55
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setEASDomain(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 761
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_56
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 764
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setPeakDays(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 770
    .end local v0           #_arg0:I
    :sswitch_57
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPeakDays()I

    move-result v3

    .line 772
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 778
    .end local v3           #_result:I
    :sswitch_58
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 781
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSyncSchedulePeakOn(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 787
    .end local v0           #_arg0:I
    :sswitch_59
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSyncSchedulePeakOn()I

    move-result v3

    .line 789
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 795
    .end local v3           #_result:I
    :sswitch_5a
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSyncSchedulePeakOff(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 804
    .end local v0           #_arg0:I
    :sswitch_5b
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getSyncSchedulePeakOff()I

    move-result v3

    .line 806
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 812
    .end local v3           #_result:I
    :sswitch_5c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 815
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setPeakTimeStart(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 821
    .end local v0           #_arg0:I
    :sswitch_5d
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPeakTimeStart()I

    move-result v3

    .line 823
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 829
    .end local v3           #_result:I
    :sswitch_5e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 832
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setPeakTimeEnd(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 838
    .end local v0           #_arg0:I
    :sswitch_5f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPeakTimeEnd()I

    move-result v3

    .line 840
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 846
    .end local v3           #_result:I
    :sswitch_60
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setContactGroup(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 855
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_61
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getContactGroup()Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 863
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_62
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getColorGroupIdx()I

    move-result v3

    .line 865
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 871
    .end local v3           #_result:I
    :sswitch_63
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getColorIdx()I

    move-result v3

    .line 873
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 879
    .end local v3           #_result:I
    :sswitch_64
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getProviderGroup()Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_65
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 890
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setSyncWithServer(I)V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 896
    .end local v0           #_arg0:I
    :sswitch_66
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->syncWithServer()I

    move-result v3

    .line 898
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 904
    .end local v3           #_result:I
    :sswitch_67
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 912
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_68
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->refresh()V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 919
    :sswitch_69
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->reloadMailboxs()V

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 926
    :sswitch_6a
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->delete()Z

    move-result v3

    .line 928
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    if-eqz v3, :cond_8

    move v6, v5

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 934
    .end local v3           #_result:Z
    :sswitch_6b
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->isChanged()Z

    move-result v3

    .line 936
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v3, :cond_9

    move v6, v5

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 942
    .end local v3           #_result:Z
    :sswitch_6c
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->resetSyncAlarm()V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 949
    :sswitch_6d
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->updateFetchTime()V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 956
    :sswitch_6e
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->commit()V

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 963
    :sswitch_6f
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setPreviewLineNum(I)V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 972
    .end local v0           #_arg0:I
    :sswitch_70
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getPreviewLineNum()I

    move-result v3

    .line 974
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 980
    .end local v3           #_result:I
    :sswitch_71
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 984
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    .line 985
    .local v2, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/mail/account/IAccount$Stub;->setMailboxDefaultSyncEnabled(JZ)V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_a
    move v2, v6

    .line 984
    goto :goto_4

    .line 991
    .end local v0           #_arg0:J
    :sswitch_72
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->commitMailboxChanges()V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 998
    :sswitch_73
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v0, v5

    .line 1001
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/account/IAccount$Stub;->setAdditionalSyncWhenErrorEnabled(Z)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_b
    move v0, v6

    .line 1000
    goto :goto_5

    .line 1007
    :sswitch_74
    const-string v7, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->isAdditionalSyncWhenErrorEnabled()Z

    move-result v3

    .line 1009
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    if-eqz v3, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1015
    .end local v3           #_result:Z
    :sswitch_75
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/htc/android/mail/account/IAccount$Stub;->getLastFetchTagsTime()J

    move-result-wide v3

    .line 1017
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 1023
    .end local v3           #_result:J
    :sswitch_76
    const-string v6, "com.htc.android.mail.account.IAccount"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1026
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/account/IAccount$Stub;->setLastFetchTagsTime(J)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
