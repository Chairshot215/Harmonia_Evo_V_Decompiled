.class public Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;
.super Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;


# instance fields
.field private final bodyParts:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

.field private final numBodyParts:I

.field private final root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;


# direct methods
.method public constructor <init>(IILcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    iput-object p4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    array-length v0, p4

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->numBodyParts:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->numBodyParts:I

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->numBodyParts:I

    new-array v1, v1, [Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->numBodyParts:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBodyParts()[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->getPayloadProvider()Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->root:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->getPayloadProvider()Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    return v0
.end method
