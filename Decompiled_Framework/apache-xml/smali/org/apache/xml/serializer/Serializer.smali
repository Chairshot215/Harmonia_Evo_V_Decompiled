.class public interface abstract Lorg/apache/xml/serializer/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract asContentHandler()Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDOM3Serializer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputFormat()Ljava/util/Properties;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getWriter()Ljava/io/Writer;
.end method

.method public abstract reset()Z
.end method

.method public abstract setOutputFormat(Ljava/util/Properties;)V
.end method

.method public abstract setOutputStream(Ljava/io/OutputStream;)V
.end method

.method public abstract setWriter(Ljava/io/Writer;)V
.end method
