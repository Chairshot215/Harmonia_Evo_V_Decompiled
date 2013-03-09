.class Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;
.super Ljava/lang/Object;
.source "VCardMgr.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardUploader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 505
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    .line 507
    .local v0, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    .line 510
    const-string v1, "GTalkService"

    const-string v2, "VCardUploader: upload avatar failed!"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method uploadToServer([BLjava/lang/String;)V
    .locals 3
    .parameter "avatarData"
    .parameter "fullJid"

    .prologue
    .line 492
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 493
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 495
    .local v1, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/packet/VCard;->setFrom(Ljava/lang/String;)V

    .line 496
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 497
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/VCard;->setAvatarForUpload([B)V

    .line 501
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 502
    return-void
.end method
