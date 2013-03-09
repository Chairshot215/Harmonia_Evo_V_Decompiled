.class Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
.super Ljava/lang/Object;
.source "PacketProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PacketUnit"
.end annotation


# instance fields
.field packet:Lorg/jivesoftware/smack/packet/Packet;

.field packetListener:Lorg/jivesoftware/smack/PacketListener;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smack/PacketListener;)V
    .locals 0
    .parameter "packet"
    .parameter "listener"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;->packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 28
    iput-object p2, p0, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 29
    return-void
.end method
