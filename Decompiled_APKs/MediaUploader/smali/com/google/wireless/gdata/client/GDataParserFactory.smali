.class public interface abstract Lcom/google/wireless/gdata/client/GDataParserFactory;
.super Ljava/lang/Object;
.source "GDataParserFactory.java"


# virtual methods
.method public abstract createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
.end method
