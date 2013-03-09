.class public abstract Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;
.super Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# instance fields
.field protected delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

.field private statusCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->setId(I)V

    iput p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->statusCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->setId(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->statusCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public bufferAndDetach()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;->bufferAndDetach()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->statusCode:I

    return v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
