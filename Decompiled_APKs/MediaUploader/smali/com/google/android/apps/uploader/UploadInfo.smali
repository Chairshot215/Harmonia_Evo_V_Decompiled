.class public Lcom/google/android/apps/uploader/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/UploadInfo$2;,
        Lcom/google/android/apps/uploader/UploadInfo$UploadState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/uploader/UploadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field private bytesTotal:J

.field private bytesUploaded:J

.field private destination:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private guid:J

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private requestTemplate:Ljava/lang/String;

.field private state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

.field private stateDetail:Ljava/lang/String;

.field private thumbnail:[B

.field private uploadUri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/apps/uploader/UploadInfo$1;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/UploadInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/UploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p1, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    .line 154
    iput-object p3, p0, Lcom/google/android/apps/uploader/UploadInfo;->fileUri:Landroid/net/Uri;

    .line 155
    iput-object p4, p0, Lcom/google/android/apps/uploader/UploadInfo;->mimeType:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/google/android/apps/uploader/UploadInfo;->account:Ljava/lang/String;

    .line 157
    iput-object p6, p0, Lcom/google/android/apps/uploader/UploadInfo;->authTokenType:Ljava/lang/String;

    .line 158
    iput-object p7, p0, Lcom/google/android/apps/uploader/UploadInfo;->url:Ljava/lang/String;

    .line 159
    iput-object p8, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    .line 160
    iput-object p9, p0, Lcom/google/android/apps/uploader/UploadInfo;->requestTemplate:Ljava/lang/String;

    .line 161
    iput-object p10, p0, Lcom/google/android/apps/uploader/UploadInfo;->destination:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    .line 163
    move-wide/from16 v0, p12

    move-object v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    .line 164
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/apps/uploader/UploadInfo;->thumbnail:[B

    .line 166
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/uploader/UploadInfo;->setBytesUploaded(J)V

    .line 167
    sget-object v3, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->NEW:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    const-wide/16 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/google/android/apps/uploader/UploadInfo;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadInfo;->generateGuid()V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->fileUri:Landroid/net/Uri;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->mimeType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->account:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->authTokenType:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->url:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->requestTemplate:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->destination:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->thumbnail:[B

    .line 212
    invoke-static {}, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->values()[Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->stateDetail:Ljava/lang/String;

    .line 214
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateGuid()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, -0x80000000

    sub-long/2addr v0, v2

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x21

    shl-long/2addr v2, v4

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    .line 195
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 354
    instance-of v0, p1, Lcom/google/android/apps/uploader/UploadInfo;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v0

    check-cast p1, Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 355
    goto :goto_0

    :cond_1
    move v0, v4

    .line 357
    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->authTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesTotal()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    return-wide v0
.end method

.method public getBytesUploaded()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGuid()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageUploaded()I
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x64

    .line 312
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 318
    :cond_1
    :goto_0
    return v0

    .line 316
    :cond_2
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 318
    if-le v0, v4, :cond_1

    move v0, v4

    goto :goto_0
.end method

.method public getRequestTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->requestTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/google/android/apps/uploader/UploadInfo$UploadState;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    return-object v0
.end method

.method public getStateDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->stateDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->thumbnail:[B

    return-object v0
.end method

.method public getUploadTicket()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->UPLOADING:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_TO_RETRY:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadInfo;->isResolved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResolved()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->COMPLETED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBytesUploaded(J)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    .line 309
    return-void
.end method

.method public setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    .line 240
    iput-object p2, p0, Lcom/google/android/apps/uploader/UploadInfo;->stateDetail:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setUploadUri(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    .line 331
    return-void
.end method

.method public shouldRetry()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_TO_RETRY:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->authTokenType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->uploadUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->requestTemplate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->destination:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->guid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-wide v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->bytesUploaded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->thumbnail:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->state:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadInfo;->stateDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
