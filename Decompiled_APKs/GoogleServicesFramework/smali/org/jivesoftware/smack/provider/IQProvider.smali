.class public interface abstract Lorg/jivesoftware/smack/provider/IQProvider;
.super Ljava/lang/Object;
.source "IQProvider.java"


# virtual methods
.method public abstract getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
.end method

.method public abstract getTag()I
.end method

.method public abstract parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
