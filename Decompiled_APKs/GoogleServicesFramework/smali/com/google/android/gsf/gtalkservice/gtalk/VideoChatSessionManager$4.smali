.class Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$4;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->sendCallPerfStatsStanza(Ljava/lang/String;)V
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
    .line 288
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 290
    const-string v0, "received iq resp for callperfstats:"

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$400(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$400(Ljava/lang/String;)V

    .line 292
    return-void
.end method
