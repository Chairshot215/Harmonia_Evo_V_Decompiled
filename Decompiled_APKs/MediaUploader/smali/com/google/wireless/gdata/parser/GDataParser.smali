.class public interface abstract Lcom/google/wireless/gdata/parser/GDataParser;
.super Ljava/lang/Object;
.source "GDataParser.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract hasMoreData()Z
.end method

.method public abstract init()Lcom/google/wireless/gdata/data/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
