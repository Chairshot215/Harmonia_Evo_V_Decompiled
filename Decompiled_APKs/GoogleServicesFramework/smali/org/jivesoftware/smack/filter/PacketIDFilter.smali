.class public Lorg/jivesoftware/smack/filter/PacketIDFilter;
.super Ljava/lang/Object;
.source "PacketIDFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private packetID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "packetID"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet ID cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/filter/PacketIDFilter;->packetID:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .parameter "packet"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/PacketIDFilter;->packetID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
