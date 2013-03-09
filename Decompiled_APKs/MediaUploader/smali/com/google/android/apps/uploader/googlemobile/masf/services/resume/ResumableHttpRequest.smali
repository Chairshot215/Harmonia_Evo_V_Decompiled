.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
.super Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;


# instance fields
.field private request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;)V

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->addBodyPart(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->dispose()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->getPayload()[B

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->getStreamLength()I

    move-result v0

    return v0
.end method

.method public setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setPayload(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setPayload(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V

    return-void
.end method

.method public setPayload([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setPayload([B)V

    return-void
.end method
