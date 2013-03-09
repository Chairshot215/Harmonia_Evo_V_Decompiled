.class Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendIqStanza(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->access$400(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V

    .line 188
    return-void
.end method
