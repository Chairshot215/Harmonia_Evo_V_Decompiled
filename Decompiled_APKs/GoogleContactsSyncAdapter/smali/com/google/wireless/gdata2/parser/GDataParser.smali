.class public interface abstract Lcom/google/wireless/gdata2/parser/GDataParser;
.super Ljava/lang/Object;
.source "GDataParser.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract hasMoreData()Z
.end method

.method public abstract parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
