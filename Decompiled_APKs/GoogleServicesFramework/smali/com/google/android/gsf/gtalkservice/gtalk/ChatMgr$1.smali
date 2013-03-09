.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$1;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .parameter "packet"

    .prologue
    const/4 v0, 0x0

    .line 132
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v1, :cond_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method
