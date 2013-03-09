.class public interface abstract Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
.super Ljava/lang/Object;
.source "PacketExtensionProvider.java"


# virtual methods
.method public abstract getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
.end method

.method public abstract getTag()I
.end method

.method public abstract parseExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
