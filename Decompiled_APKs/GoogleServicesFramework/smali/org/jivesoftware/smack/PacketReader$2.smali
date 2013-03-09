.class Lorg/jivesoftware/smack/PacketReader$2;
.super Ljava/lang/Thread;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PacketReader;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    #calls: Lorg/jivesoftware/smack/PacketReader;->parsePackets()V
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketReader;->access$100(Lorg/jivesoftware/smack/PacketReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "PacketReader exiting."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "PacketReader exiting."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    throw v0
.end method
