.class final Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$5;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "VideoChatSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->createIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method
