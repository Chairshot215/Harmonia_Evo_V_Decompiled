.class public interface abstract Lcom/google/wireless/gdata/serializer/GDataSerializer;
.super Ljava/lang/Object;
.source "GDataSerializer.java"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract serialize(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method
