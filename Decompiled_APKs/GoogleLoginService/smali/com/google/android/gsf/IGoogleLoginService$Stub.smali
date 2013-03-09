.class public abstract Lcom/google/android/gsf/IGoogleLoginService$Stub;
.super Landroid/os/Binder;
.source "IGoogleLoginService.java"

# interfaces
.implements Lcom/google/android/gsf/IGoogleLoginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/IGoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 51
    :sswitch_0
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->getAccounts()[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v7, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 75
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->getAccount(Z)Ljava/lang/String;

    move-result-object v3

    .line 76
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 74
    goto :goto_1

    .line 82
    :sswitch_4
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v7, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 101
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object v3

    .line 102
    .local v3, _result:Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v3, p3, v5}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_result:Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    :cond_1
    move v2, v6

    .line 100
    goto :goto_2

    .line 108
    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v3           #_result:Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    :sswitch_6
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->invalidateAuthToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->getAndroidId()J

    move-result-wide v3

    .line 125
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 131
    .end local v3           #_result:J
    :sswitch_8
    const-string v7, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    sget-object v7, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/LoginData;

    .line 139
    .local v0, _arg0:Lcom/google/android/gsf/LoginData;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->tryNewAccount(Lcom/google/android/gsf/LoginData;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v0, p3, v5}, Lcom/google/android/gsf/LoginData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/gsf/LoginData;
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :sswitch_9
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    sget-object v6, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/LoginData;

    .line 160
    .restart local v0       #_arg0:Lcom/google/android/gsf/LoginData;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->saveNewAccount(Lcom/google/android/gsf/LoginData;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/gsf/LoginData;
    goto :goto_4

    .line 166
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :sswitch_a
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->saveAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_b
    const-string v7, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 182
    sget-object v7, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/LoginData;

    .line 187
    .local v0, _arg0:Lcom/google/android/gsf/LoginData;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->updatePassword(Lcom/google/android/gsf/LoginData;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v0, :cond_7

    .line 190
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0, p3, v5}, Lcom/google/android/gsf/LoginData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 185
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/gsf/LoginData;
    goto :goto_5

    .line 194
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v0           #_arg0:Lcom/google/android/gsf/LoginData;
    :sswitch_c
    const-string v7, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->verifyStoredPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 206
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v3, :cond_8

    move v6, v5

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_d
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->saveUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_e
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->deleteOneAccount(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->deleteAllAccounts()V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    :sswitch_10
    const-string v6, "com.google.android.gsf.IGoogleLoginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->waitForAndroidId()I

    move-result v3

    .line 243
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 47
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
