.class public abstract Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IHtcMediaPlaybackService.java"

# interfaces
.implements Lcom/htc/service/music/IHtcMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/music/IHtcMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/music/IHtcMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.music.IHtcMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xe

.field static final TRANSACTION_getAlbumArtPath:I = 0x11

.field static final TRANSACTION_getAlbumId:I = 0x9

.field static final TRANSACTION_getAlbumName:I = 0x8

.field static final TRANSACTION_getArtistId:I = 0xb

.field static final TRANSACTION_getArtistName:I = 0xa

.field static final TRANSACTION_getAudioId:I = 0xd

.field static final TRANSACTION_getPath:I = 0xc

.field static final TRANSACTION_getRepeatMode:I = 0x15

.field static final TRANSACTION_getShuffleMode:I = 0x13

.field static final TRANSACTION_getTrackName:I = 0x7

.field static final TRANSACTION_isPlaying:I = 0x1

.field static final TRANSACTION_next:I = 0x6

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_position:I = 0xf

.field static final TRANSACTION_prev:I = 0x5

.field static final TRANSACTION_seek:I = 0x10

.field static final TRANSACTION_setRepeatMode:I = 0x14

.field static final TRANSACTION_setShuffleMode:I = 0x12

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/music/IHtcMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/service/music/IHtcMediaPlaybackService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->isPlaying()Z

    move-result v2

    .line 52
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 58
    .end local v2           #_result:Z
    :sswitch_2
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->stop()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->pause()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    :sswitch_4
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->play()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->prev()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->next()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_7
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getAlbumId()I

    move-result v2

    .line 111
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v2           #_result:I
    :sswitch_a
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getArtistId()I

    move-result v2

    .line 127
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v2           #_result:I
    :sswitch_c
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getAudioId()I

    move-result v2

    .line 143
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v2           #_result:I
    :sswitch_e
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->duration()J

    move-result-wide v2

    .line 151
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 157
    .end local v2           #_result:J
    :sswitch_f
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->position()J

    move-result-wide v2

    .line 159
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 165
    .end local v2           #_result:J
    :sswitch_10
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 168
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v2

    .line 169
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 175
    .end local v0           #_arg0:J
    .end local v2           #_result:J
    :sswitch_11
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:I
    :sswitch_13
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v2

    .line 194
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v2           #_result:I
    :sswitch_14
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    .end local v0           #_arg0:I
    :sswitch_15
    const-string v4, "com.htc.service.music.IHtcMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v2

    .line 211
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
