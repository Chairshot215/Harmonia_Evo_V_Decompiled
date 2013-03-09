.class public interface abstract Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;
.super Ljava/lang/Object;
.source "XmlParserFactory.java"


# virtual methods
.method public abstract createParser()Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
