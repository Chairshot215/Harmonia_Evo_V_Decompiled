.class public Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
.super Ljava/lang/Object;
.source "EASAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ABSyncFlag:Z

.field public CalSyncFlag:Z

.field public MailSyncFlag:Z

.field public daysToSync:I

.field public domain:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fetchFreq:I

.field public nickName:Ljava/lang/String;

.field public oof_body:Ljava/lang/String;

.field public oof_endDate:Ljava/lang/String;

.field public oof_startDate:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pushRomingNotificationStatus_endDate:Ljava/lang/String;

.field public pushRomingNotificationStatus_startDate:Ljava/lang/String;

.field public pushSyncNotificationStatus_endDate:Ljava/lang/String;

.field public pushSyncNotificationStatus_startDate:Ljava/lang/String;

.field public secureFlag:Z

.field public server:Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public verifyCertFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_startDate:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_endDate:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_body:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_startDate:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_endDate:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_startDate:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_endDate:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->daysToSync:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    .line 103
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 104
    .local v0, val:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 105
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    .line 106
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->verifyCertFlag:Z

    .line 107
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    .line 108
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    .line 109
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getABSyncFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public getCalSyncFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public getDaysToSync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->daysToSync:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "NULL"

    .line 128
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFetchFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailSyncFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushRomingNotificationStatus_endDateg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_endDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_endDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushRomingNotificationStatus_startDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_startDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_startDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushSyncNotificationStatus_endDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_endDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_endDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushSyncNotificationStatus_startDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_startDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_startDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVerifyCertFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->verifyCertFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public getsecureFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_startDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_endDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->oof_body:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_startDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushRomingNotificationStatus_endDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_startDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->pushSyncNotificationStatus_endDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->daysToSync:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 60
    .local v0, val:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    aput-boolean v2, v0, v1

    .line 61
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->verifyCertFlag:Z

    aput-boolean v2, v0, v1

    .line 62
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    aput-boolean v2, v0, v1

    .line 63
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    aput-boolean v2, v0, v1

    .line 64
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    aput-boolean v2, v0, v1

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 66
    return-void
.end method
