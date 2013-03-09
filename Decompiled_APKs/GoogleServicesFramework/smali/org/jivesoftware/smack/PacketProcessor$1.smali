.class Lorg/jivesoftware/smack/PacketProcessor$1;
.super Ljava/lang/Thread;
.source "PacketProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PacketProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketProcessor;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PacketProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketProcessor$1;->this$0:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 45
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor$1;->this$0:Lorg/jivesoftware/smack/PacketProcessor;

    #calls: Lorg/jivesoftware/smack/PacketProcessor;->process()V
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketProcessor;->access$000(Lorg/jivesoftware/smack/PacketProcessor;)V

    .line 46
    return-void
.end method
