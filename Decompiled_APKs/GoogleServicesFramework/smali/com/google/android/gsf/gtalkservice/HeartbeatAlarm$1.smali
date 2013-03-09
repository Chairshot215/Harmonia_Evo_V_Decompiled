.class Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;
.super Ljava/lang/Thread;
.source "HeartbeatAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->asyncResetConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

.field final synthetic val$connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;->this$0:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "HeartbeatAlarm timed out waiting for ack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->resetConnection(Ljava/lang/Exception;)V

    .line 268
    return-void
.end method
