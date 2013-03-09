.class Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "ApplicationEndpointPacketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
