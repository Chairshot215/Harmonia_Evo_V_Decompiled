.class public Lcom/htc/sdm/SoundSetParcelable;
.super Ljava/lang/Object;
.source "SoundSetParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SoundSetParcelable] "


# instance fields
.field private Auth:Ljava/lang/String;

.field private Corp:Ljava/lang/String;

.field private DownloadStatus:I

.field private GUID:Ljava/lang/String;

.field private SDMFileUri:Ljava/lang/String;

.field private _id:J

.field private authorize:B

.field private cat:Ljava/lang/String;

.field private comment_count:J

.field private description:Ljava/lang/String;

.field private download_count:J

.field private lang:Ljava/lang/String;

.field private likeCount:J

.field private localFileUri:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private preUrl:Ljava/lang/String;

.field private rating:J

.field private rating_count:J

.field private refType:Ljava/lang/String;

.field private reldate:Ljava/lang/String;

.field private reltime:J

.field private size:Ljava/lang/String;

.field private srcType:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/htc/sdm/SoundSetParcelable$1;

    invoke-direct {v0}, Lcom/htc/sdm/SoundSetParcelable$1;-><init>()V

    sput-object v0, Lcom/htc/sdm/SoundSetParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "_id"
    .parameter "GUID"
    .parameter "version"
    .parameter "size"
    .parameter "cat"
    .parameter "preUrl"
    .parameter "url"
    .parameter "authorize"
    .parameter "SDMFileUri"
    .parameter "localFileUri"
    .parameter "srcType"
    .parameter "refType"
    .parameter "reldate"
    .parameter "rating"
    .parameter "rating_count"
    .parameter "download_count"
    .parameter "comment_count"
    .parameter "likeCount"
    .parameter "name"
    .parameter "description"
    .parameter "Auth"
    .parameter "Corp"
    .parameter "DownloadStatus"
    .parameter "lang"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 18
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 20
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 22
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 24
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 26
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 28
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 32
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 34
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 36
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 38
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 41
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 42
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 164
    iput-wide p1, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 165
    iput-object p3, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 170
    iput-object p7, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 171
    iput-object p8, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 172
    iput-byte p9, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 173
    iput-object p10, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 174
    iput-object p11, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 179
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 180
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 181
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 182
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 183
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 185
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 189
    move/from16 v0, p29

    iput v0, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 190
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 24
    iput-byte v3, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 32
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 33
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 34
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 35
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 36
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 44
    iput v3, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/sdm/SoundSetParcelable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/sdm/SoundSetParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "GUID"
    .parameter "version"
    .parameter "size"
    .parameter "cat"
    .parameter "refType"
    .parameter "reltime"
    .parameter "name"
    .parameter "description"
    .parameter "auth"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 24
    iput-byte v3, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 32
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 33
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 34
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 35
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 36
    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 44
    iput v3, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 212
    iput-wide p6, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 213
    iput-object p8, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 214
    iput-object p9, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 215
    iput-object p10, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 216
    iput-object p11, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorize()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 258
    iget-byte v0, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    return-wide v0
.end method

.method public getCorp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDlCount()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    return v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    return-wide v0
.end method

.method public getLocalFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    return-wide v0
.end method

.method public getRatingCount()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    return-wide v0
.end method

.method public getRefType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    return-object v0
.end method

.method public getRelTime()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    return-wide v0
.end method

.method public getSDMFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "sLang"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setLocalFileUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "sName"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sPath"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public updateParcelable(Lcom/htc/sdm/SoundSetParcelable;)V
    .locals 3
    .parameter "parcelable"

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    .line 374
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getAuthorize()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    .line 382
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRelDate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRelTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    .line 389
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRating()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    .line 390
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRatingCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    .line 391
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getDlCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    .line 392
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getCommentCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    .line 393
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLikeCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    .line 395
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getCorp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v1

    iput v1, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    .line 400
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLang()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->cat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->preUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-byte v0, p0, Lcom/htc/sdm/SoundSetParcelable;->authorize:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->SDMFileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->localFileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->srcType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->refType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reldate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->reltime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->rating_count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->download_count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->comment_count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/htc/sdm/SoundSetParcelable;->likeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Auth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->Corp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/htc/sdm/SoundSetParcelable;->DownloadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/sdm/SoundSetParcelable;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
