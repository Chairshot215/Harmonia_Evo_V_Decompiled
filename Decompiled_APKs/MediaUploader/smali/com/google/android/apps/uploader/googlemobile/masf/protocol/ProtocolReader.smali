.class public Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;
.super Ljava/lang/Object;


# instance fields
.field private dataInputStream:Ljava/io/DataInputStream;

.field private delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    return-void
.end method

.method public getNextResponse()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;->waitForCompletion()V

    iput-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v2, 0x8100

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainResponse;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainResponse;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V

    :goto_0
    return-object v0

    :cond_1
    const v2, 0x8101

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-object v0, v3

    goto :goto_0
.end method
