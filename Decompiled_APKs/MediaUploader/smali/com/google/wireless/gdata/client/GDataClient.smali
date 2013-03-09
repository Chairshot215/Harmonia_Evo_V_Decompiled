.class public interface abstract Lcom/google/wireless/gdata/client/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
.end method

.method public abstract deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodeUri(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
