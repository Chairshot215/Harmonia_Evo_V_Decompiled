.class Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 7
    .parameter "packet"

    .prologue
    .line 145
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 146
    .local v0, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    .line 147
    .local v5, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v1

    .line 148
    .local v1, packetAccountId:J
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v3

    .line 149
    .local v3, sessionAccountId:J
    cmp-long v6, v3, v1

    if-nez v6, :cond_0

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v5, v6, :cond_0

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
