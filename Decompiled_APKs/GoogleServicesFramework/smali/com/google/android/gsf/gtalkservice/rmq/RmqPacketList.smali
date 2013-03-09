.class public abstract Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
.super Ljava/lang/Object;
.source "RmqPacketList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public abstract getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;
.end method

.method public abstract size()I
.end method
