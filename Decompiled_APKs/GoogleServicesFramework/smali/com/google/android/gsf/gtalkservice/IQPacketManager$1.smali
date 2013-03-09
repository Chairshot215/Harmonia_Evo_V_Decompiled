.class Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;
.super Ljava/lang/Object;
.source "IQPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/IQPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/IQPacketManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/IQPacketManager;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "packet"

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 50
    .local v0, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    .line 51
    .local v1, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
