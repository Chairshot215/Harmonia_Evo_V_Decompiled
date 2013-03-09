.class public Lcom/htc/sdm/SoundParcelable;
.super Ljava/lang/Object;
.source "SoundParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SoundParcelable] "


# instance fields
.field private GUID:Ljava/lang/String;

.field private _id:J

.field private authorize:B

.field private dlDbUri:Ljava/lang/String;

.field private downloadStatus:I

.field private name:Ljava/lang/String;

.field private preUrl:Ljava/lang/String;

.field private refType:Ljava/lang/String;

.field private soundUri:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/htc/sdm/SoundParcelable$1;

    invoke-direct {v0}, Lcom/htc/sdm/SoundParcelable$1;-><init>()V

    sput-object v0, Lcom/htc/sdm/SoundParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 2
    .parameter "_id"
    .parameter "GUID"
    .parameter "preUrl"
    .parameter "url"
    .parameter "soundUri"
    .parameter "dlDbUri"
    .parameter "refType"
    .parameter "name"
    .parameter "downloadStatus"
    .parameter "authorize"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    .line 82
    iput-wide p1, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    .line 83
    iput-object p3, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    .line 87
    iput-object p7, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    .line 88
    iput-object p8, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    .line 89
    iput-object p9, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    .line 90
    iput p10, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    .line 91
    iput-byte p11, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/sdm/SoundParcelable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/sdm/SoundParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthorize()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 143
    iget-byte v0, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getDlDbUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    return v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/htc/sdm/SoundParcelable;->_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->preUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->soundUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->dlDbUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->refType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/htc/sdm/SoundParcelable;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/htc/sdm/SoundParcelable;->downloadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-byte v0, p0, Lcom/htc/sdm/SoundParcelable;->authorize:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    return-void
.end method
