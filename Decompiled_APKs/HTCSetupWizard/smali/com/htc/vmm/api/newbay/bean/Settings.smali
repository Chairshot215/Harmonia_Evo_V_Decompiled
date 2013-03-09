.class public Lcom/htc/vmm/api/newbay/bean/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/Settings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private isMusicSync:Z

.field private isPictureSync:Z

.field private isRemind:Z

.field private isVideoSync:Z

.field private musicLastBackupTime:Ljava/util/Date;

.field private pictureLastBackupTime:Ljava/util/Date;

.field private updateSchedule:I

.field private useNetwork:I

.field private videoLastBackupTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/htc/vmm/api/newbay/bean/Settings$1;

    invoke-direct {v0}, Lcom/htc/vmm/api/newbay/bean/Settings$1;-><init>()V

    sput-object v0, Lcom/htc/vmm/api/newbay/bean/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "settings"

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->id:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 14
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 17
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 18
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 19
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 20
    iput v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v3, "settings"

    iput-object v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->id:Ljava/lang/String;

    .line 13
    iput-boolean v4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 14
    iput-boolean v4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 15
    iput-boolean v4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 16
    const/4 v3, 0x4

    iput v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 17
    iput-object v5, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 18
    iput-object v5, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 19
    iput-object v5, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 20
    iput v4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 21
    iput-boolean v4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, musicLastBackupTimeStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/vmm/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v0, v3}, Lcom/htc/vmm/util/DateUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, videoLastBackupTimeStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/vmm/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v2, v3}, Lcom/htc/vmm/util/DateUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, pictureLastBackupTimeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/vmm/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v1, v3}, Lcom/htc/vmm/util/DateUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 133
    return-void
.end method

.method public constructor <init>(ZZZILjava/util/Date;Ljava/util/Date;Ljava/util/Date;IZ)V
    .locals 3
    .parameter "isMusicSync"
    .parameter "isVideoSync"
    .parameter "isPictureSync"
    .parameter "updateSchedule"
    .parameter "musicLastBackupTime"
    .parameter "videoLastBackupTime"
    .parameter "pictureLastBackupTime"
    .parameter "useNetwork"
    .parameter "isRemind"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "settings"

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->id:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 14
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 17
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 18
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 19
    iput-object v2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 20
    iput v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 30
    iput-boolean p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 31
    iput-boolean p2, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 32
    iput-boolean p3, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 33
    iput p4, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 34
    iput-object p5, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 35
    iput-object p6, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 36
    iput-object p7, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 37
    iput p8, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 38
    iput-boolean p9, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicLastBackupTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPictureLastBackupTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUpdateSchedule()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    return v0
.end method

.method public getUseNetwork()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    return v0
.end method

.method public getVideoLastBackupTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    return-object v0
.end method

.method public isMusicSync()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    return v0
.end method

.method public isPictureSync()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    return v0
.end method

.method public isRemind()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    return v0
.end method

.method public isVideoSync()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    return v0
.end method

.method public setMusicLastBackupTime(Ljava/util/Date;)V
    .locals 0
    .parameter "musicLastBackupTime"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public setMusicSync(Z)V
    .locals 0
    .parameter "isMusicSync"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    .line 61
    return-void
.end method

.method public setPictureLastBackupTime(Ljava/util/Date;)V
    .locals 0
    .parameter "pictureLastBackupTime"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    .line 97
    return-void
.end method

.method public setPictureSync(Z)V
    .locals 0
    .parameter "isPictureSync"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    .line 73
    return-void
.end method

.method public setRemind(Z)V
    .locals 0
    .parameter "isRemind"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    .line 46
    return-void
.end method

.method public setUpdateSchedule(I)V
    .locals 0
    .parameter "updateSchedule"

    .prologue
    .line 78
    iput p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    .line 79
    return-void
.end method

.method public setUseNetwork(I)V
    .locals 0
    .parameter "useNetwork"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    .line 52
    return-void
.end method

.method public setVideoLastBackupTime(Ljava/util/Date;)V
    .locals 0
    .parameter "videoLastBackupTime"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    .line 91
    return-void
.end method

.method public setVideoSync(Z)V
    .locals 0
    .parameter "isVideoSync"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->updateSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->musicLastBackupTime:Ljava/util/Date;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v0, v1}, Lcom/htc/vmm/util/DateUtils;->getString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->videoLastBackupTime:Ljava/util/Date;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v0, v1}, Lcom/htc/vmm/util/DateUtils;->getString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->pictureLastBackupTime:Ljava/util/Date;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v0, v1}, Lcom/htc/vmm/util/DateUtils;->getString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->useNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void
.end method
