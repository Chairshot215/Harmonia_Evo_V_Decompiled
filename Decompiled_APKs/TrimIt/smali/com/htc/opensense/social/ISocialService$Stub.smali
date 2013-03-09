.class public abstract Lcom/htc/opensense/social/ISocialService$Stub;
.super Landroid/os/Binder;
.source "ISocialService.java"

# interfaces
.implements Lcom/htc/opensense/social/ISocialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/ISocialService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.opensense.social.ISocialService"

.field static final TRANSACTION_addAlbum:I = 0x6

.field static final TRANSACTION_addAttachment:I = 0x11

.field static final TRANSACTION_addFeed:I = 0x15

.field static final TRANSACTION_deleteAlbum:I = 0x8

.field static final TRANSACTION_deleteAttachment:I = 0x12

.field static final TRANSACTION_deleteFeed:I = 0x16

.field static final TRANSACTION_deleteMedium:I = 0xd

.field static final TRANSACTION_editAlbum:I = 0x7

.field static final TRANSACTION_editFeed:I = 0x17

.field static final TRANSACTION_editMedium:I = 0xc

.field static final TRANSACTION_getActiveUser:I = 0x14

.field static final TRANSACTION_getAlbums:I = 0x4

.field static final TRANSACTION_getAlbumsOf:I = 0x3

.field static final TRANSACTION_getAttachments:I = 0x10

.field static final TRANSACTION_getFeedsOf:I = 0x2

.field static final TRANSACTION_getFriendList:I = 0x1

.field static final TRANSACTION_getMedia:I = 0xe

.field static final TRANSACTION_getMediaOf:I = 0x9

.field static final TRANSACTION_getMediaTagOf:I = 0xb

.field static final TRANSACTION_getPeople:I = 0x5

.field static final TRANSACTION_getRecentMedia:I = 0xa

.field static final TRANSACTION_refreshProfiles:I = 0x13

.field static final TRANSACTION_supports:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/opensense/social/ISocialService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;
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
    const-string v1, "com.htc.opensense.social.ISocialService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense/social/ISocialService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense/social/ISocialService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 57
    .local v2, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->getFriendList(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    .line 58
    .local v7, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 60
    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1

    .line 65
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Person;
    :sswitch_2
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v8

    .line 77
    .local v2, _arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 83
    .local v3, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->getFeedsOf(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;

    move-result-object v7

    .line 84
    .local v7, _result:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 86
    if-eqz v3, :cond_4

    .line 87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_2
    move v2, v9

    .line 75
    goto :goto_2

    .line 81
    .restart local v2       #_arg1:Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_3

    .line 91
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Feed;
    :sswitch_3
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 107
    .local v2, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->getAlbumsOf(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;

    move-result-object v7

    .line 108
    .local v7, _result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    if-eqz v2, :cond_6

    .line 111
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 105
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_4

    .line 115
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Album;
    :sswitch_4
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 131
    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->getAlbums([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;

    move-result-object v7

    .line 132
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    if-eqz v2, :cond_8

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 129
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_5

    .line 139
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Album;
    :sswitch_5
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1       #_arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 155
    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->getPeople([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    .line 156
    .local v7, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 158
    if-eqz v2, :cond_a

    .line 159
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 153
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_6

    .line 163
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Person;
    :sswitch_6
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    sget-object v0, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Album;

    .line 180
    .local v2, _arg1:Lcom/htc/opensense/social/data/Album;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 186
    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_8
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/data/Album;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Album;

    move-result-object v7

    .line 187
    .local v7, _result:Lcom/htc/opensense/social/data/Album;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v7, :cond_d

    .line 189
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v7, p3, v8}, Lcom/htc/opensense/social/data/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    :goto_9
    if-eqz v3, :cond_e

    .line 196
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 177
    .end local v2           #_arg1:Lcom/htc/opensense/social/data/Album;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Album;
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/data/Album;
    goto :goto_7

    .line 184
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_8

    .line 193
    .restart local v7       #_result:Lcom/htc/opensense/social/data/Album;
    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 200
    :cond_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/data/Album;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Album;
    :sswitch_7
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 211
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 217
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 223
    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_b
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->editAlbum(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;

    move-result-object v7

    .line 224
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v7, :cond_11

    .line 226
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    :goto_c
    if-eqz v3, :cond_12

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 214
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Landroid/os/Bundle;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_a

    .line 221
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_b

    .line 230
    .restart local v7       #_result:Landroid/os/Bundle;
    :cond_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 237
    :cond_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_8
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 248
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 253
    .local v2, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_d
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteAlbum(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v2, :cond_14

    .line 256
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 251
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :cond_13
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_d

    .line 260
    :cond_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :sswitch_9
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 269
    sget-object v0, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    .line 275
    .local v1, _arg0:Lcom/htc/opensense/social/data/Album;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 282
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .local v5, _arg4:Lcom/htc/opensense/social/RemoteError;
    :goto_f
    move-object v0, p0

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService$Stub;->getMediaOf(Lcom/htc/opensense/social/data/Album;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v7

    .line 288
    .local v7, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 290
    if-eqz v5, :cond_17

    .line 291
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v5, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 272
    .end local v1           #_arg0:Lcom/htc/opensense/social/data/Album;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_15
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/htc/opensense/social/data/Album;
    goto :goto_e

    .line 285
    .restart local v2       #_arg1:I
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_16
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/htc/opensense/social/RemoteError;
    goto :goto_f

    .line 295
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v1           #_arg0:Lcom/htc/opensense/social/data/Album;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_a
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 314
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .local v6, _arg5:Lcom/htc/opensense/social/RemoteError;
    :goto_10
    move-object v0, p0

    .line 319
    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService$Stub;->getRecentMedia(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v7

    .line 320
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 322
    if-eqz v6, :cond_19

    .line 323
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v6, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 317
    .end local v6           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_18
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/htc/opensense/social/RemoteError;
    goto :goto_10

    .line 327
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 333
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_b
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 345
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 346
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .restart local v6       #_arg5:Lcom/htc/opensense/social/RemoteError;
    :goto_11
    move-object v0, p0

    .line 351
    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService$Stub;->getMediaTagOf(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v7

    .line 352
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 354
    if-eqz v6, :cond_1b

    .line 355
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v6, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 349
    .end local v6           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/htc/opensense/social/RemoteError;
    goto :goto_11

    .line 359
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_c
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 372
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 378
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 379
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 384
    .local v4, _arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_13
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->editMedium(Ljava/lang/String;ILandroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;

    move-result-object v7

    .line 385
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v7, :cond_1e

    .line 387
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_14
    if-eqz v4, :cond_1f

    .line 394
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {v4, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 375
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Landroid/os/Bundle;
    :cond_1c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_12

    .line 382
    :cond_1d
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_13

    .line 391
    .restart local v7       #_result:Landroid/os/Bundle;
    :cond_1e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 398
    :cond_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 404
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_d
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 411
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 416
    .local v3, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_15
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteMedium(Ljava/lang/String;ILcom/htc/opensense/social/RemoteError;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v3, :cond_21

    .line 419
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 414
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_20
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_15

    .line 423
    :cond_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 429
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_e
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 435
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 437
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 439
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 440
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .local v5, _arg4:Lcom/htc/opensense/social/RemoteError;
    :goto_16
    move-object v0, p0

    .line 445
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService$Stub;->getMedia([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v7

    .line 446
    .local v7, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 448
    if-eqz v5, :cond_23

    .line 449
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {v5, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 443
    .end local v5           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_22
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/htc/opensense/social/RemoteError;
    goto :goto_16

    .line 453
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 459
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_f
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/opensense/social/ISocialService$Stub;->supports(Ljava/lang/String;)Z

    move-result v7

    .line 463
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v7, :cond_24

    move v9, v8

    :cond_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 469
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_10
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 476
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 481
    .local v3, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_17
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->getAttachments(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;

    move-result-object v7

    .line 482
    .local v7, _result:[Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 484
    if-eqz v3, :cond_26

    .line 485
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 479
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_25
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_17

    .line 489
    .restart local v7       #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 495
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :sswitch_11
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 502
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 508
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 509
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 514
    .local v4, _arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_19
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->addAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v4, :cond_29

    .line 517
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {v4, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 505
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :cond_27
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_18

    .line 512
    :cond_28
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_19

    .line 521
    :cond_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 527
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :sswitch_12
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 536
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 541
    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_1a
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    if-eqz v4, :cond_2b

    .line 544
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    invoke-virtual {v4, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 539
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :cond_2a
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1a

    .line 548
    :cond_2b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 554
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :sswitch_13
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    sget-object v0, Lcom/htc/opensense/social/data/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/opensense/social/data/Profile;

    .line 558
    .local v1, _arg0:[Lcom/htc/opensense/social/data/Profile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 559
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 564
    .local v2, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_1b
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/ISocialService$Stub;->refreshProfiles([Lcom/htc/opensense/social/data/Profile;Lcom/htc/opensense/social/RemoteError;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 567
    if-eqz v2, :cond_2d

    .line 568
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {v2, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 562
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :cond_2c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1b

    .line 572
    :cond_2d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v1           #_arg0:[Lcom/htc/opensense/social/data/Profile;
    .end local v2           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :sswitch_14
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 581
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/RemoteError;

    .line 586
    .local v1, _arg0:Lcom/htc/opensense/social/RemoteError;
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/htc/opensense/social/ISocialService$Stub;->getActiveUser(Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    .line 587
    .local v7, _result:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v7, :cond_2f

    .line 589
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    invoke-virtual {v7, p3, v8}, Lcom/htc/opensense/social/data/Person;->writeToParcel(Landroid/os/Parcel;I)V

    .line 595
    :goto_1d
    if-eqz v1, :cond_30

    .line 596
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    invoke-virtual {v1, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 584
    .end local v1           #_arg0:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Person;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1c

    .line 593
    .restart local v7       #_result:Lcom/htc/opensense/social/data/Person;
    :cond_2f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 600
    :cond_30
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 606
    .end local v1           #_arg0:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Person;
    :sswitch_15
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 611
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 617
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 618
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 623
    .local v3, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_1f
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;

    move-result-object v7

    .line 624
    .local v7, _result:Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v7, :cond_33

    .line 626
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    invoke-virtual {v7, p3, v8}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 632
    :goto_20
    if-eqz v3, :cond_34

    .line 633
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 614
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_31
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_1e

    .line 621
    :cond_32
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1f

    .line 630
    .restart local v7       #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_33
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 637
    :cond_34
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 643
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Feed;
    :sswitch_16
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 648
    sget-object v0, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Feed;

    .line 654
    .local v2, _arg1:Lcom/htc/opensense/social/data/Feed;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 655
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 660
    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_22
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Lcom/htc/opensense/social/RemoteError;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v3, :cond_37

    .line 663
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v3, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 651
    .end local v2           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_35
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/data/Feed;
    goto :goto_21

    .line 658
    :cond_36
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_22

    .line 667
    :cond_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 673
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v3           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_17
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 678
    sget-object v0, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Feed;

    .line 684
    .restart local v2       #_arg1:Lcom/htc/opensense/social/data/Feed;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 685
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 691
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 692
    sget-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 697
    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_25
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->editFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;

    move-result-object v7

    .line 698
    .restart local v7       #_result:Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    if-eqz v7, :cond_3b

    .line 700
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    invoke-virtual {v7, p3, v8}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 706
    :goto_26
    if-eqz v4, :cond_3c

    .line 707
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    invoke-virtual {v4, p3, v8}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 681
    .end local v2           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v7           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_38
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/opensense/social/data/Feed;
    goto :goto_23

    .line 688
    :cond_39
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_24

    .line 695
    :cond_3a
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_25

    .line 704
    .restart local v7       #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_3b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 711
    :cond_3c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
