.class public interface abstract Lcom/google/wireless/gdata2/client/GDataParserFactory;
.super Ljava/lang/Object;
.source "GDataParserFactory.java"


# virtual methods
.method public abstract createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
.end method

.method public abstract createSerializer(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
.end method
