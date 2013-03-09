.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$2;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->removeContact(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 248
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    .line 250
    const-string v0, "GTalkService"

    const-string v1, "removeContact failed"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method
