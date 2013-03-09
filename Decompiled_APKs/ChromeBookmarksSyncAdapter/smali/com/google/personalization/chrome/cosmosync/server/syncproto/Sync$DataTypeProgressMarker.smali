.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataTypeProgressMarker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;


# instance fields
.field private dataTypeId_:I

.field private hasDataTypeId:Z

.field private hasNotificationHint:Z

.field private hasTimestampTokenForMigration:Z

.field private hasToken:Z

.field private memoizedSerializedSize:I

.field private notificationHint_:Ljava/lang/String;

.field private timestampTokenForMigration_:J

.field private token_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3561
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3562
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 3563
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->initFields()V

    .line 3564
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->dataTypeId_:I

    .line 3221
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->token_:Lcom/google/protobuf/ByteString;

    .line 3228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->timestampTokenForMigration_:J

    .line 3235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->notificationHint_:Ljava/lang/String;

    .line 3262
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->memoizedSerializedSize:I

    .line 3198
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->initFields()V

    .line 3199
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3194
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    .line 3200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->dataTypeId_:I

    .line 3221
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->token_:Lcom/google/protobuf/ByteString;

    .line 3228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->timestampTokenForMigration_:J

    .line 3235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->notificationHint_:Ljava/lang/String;

    .line 3262
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->memoizedSerializedSize:I

    .line 3200
    return-void
.end method

.method static synthetic access$10002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint:Z

    return p1
.end method

.method static synthetic access$10102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->notificationHint_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->dataTypeId_:I

    return p1
.end method

.method static synthetic access$9602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->token_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3194
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->timestampTokenForMigration_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    .locals 1

    .prologue
    .line 3204
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3240
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 1

    .prologue
    .line 3355
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->access$9200()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3358
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataTypeId()I
    .locals 1

    .prologue
    .line 3216
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->dataTypeId_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    .locals 1

    .prologue
    .line 3208
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->notificationHint_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3264
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->memoizedSerializedSize:I

    .line 3265
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3285
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3267
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3268
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3269
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDataTypeId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3272
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3273
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3276
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3277
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getTimestampTokenForMigration()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3280
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3281
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getNotificationHint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3284
    :cond_4
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->memoizedSerializedSize:I

    move v1, v0

    .line 3285
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestampTokenForMigration()J
    .locals 2

    .prologue
    .line 3230
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->timestampTokenForMigration_:J

    return-wide v0
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasDataTypeId()Z
    .locals 1

    .prologue
    .line 3215
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId:Z

    return v0
.end method

.method public hasNotificationHint()Z
    .locals 1

    .prologue
    .line 3236
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint:Z

    return v0
.end method

.method public hasTimestampTokenForMigration()Z
    .locals 1

    .prologue
    .line 3229
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 3222
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3242
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 1

    .prologue
    .line 3356
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 1

    .prologue
    .line 3360
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3247
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getSerializedSize()I

    .line 3248
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3249
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDataTypeId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3251
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3252
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3254
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3255
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getTimestampTokenForMigration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3257
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3258
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getNotificationHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3260
    :cond_3
    return-void
.end method
