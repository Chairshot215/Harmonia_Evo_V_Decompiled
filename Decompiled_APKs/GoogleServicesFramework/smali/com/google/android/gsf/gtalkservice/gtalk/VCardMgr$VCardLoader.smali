.class Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;
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
    name = "VCardLoader"
.end annotation


# instance fields
.field private mAvatarHash:Ljava/lang/String;

.field private mContact:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "contact"
    .parameter "avatarHash"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    .line 433
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mAvatarHash:Ljava/lang/String;

    .line 434
    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 461
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->removeFromLoadingList(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$400(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V

    .line 463
    instance-of v5, p1, Lorg/jivesoftware/smackx/packet/VCard;

    if-nez v5, :cond_1

    .line 464
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VCardLoader.handlePacket: got packet of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ignore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p1

    .line 474
    check-cast v4, Lorg/jivesoftware/smackx/packet/VCard;

    .line 475
    .local v4, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->hasModified()Z

    move-result v1

    .line 476
    .local v1, hasModified:Z
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->isModified()Z

    move-result v3

    .line 478
    .local v3, isModified:Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    .line 481
    :cond_2
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v0

    .line 482
    .local v0, data:[B
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 483
    :cond_3
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatarHash()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, hash:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->storeAvatarData(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0
.end method

.method sendLoadRequest()V
    .locals 5

    .prologue
    .line 440
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load vcard for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->addToLoadingList(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 446
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 447
    .local v1, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setTo(Ljava/lang/String;)V

    .line 448
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 449
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->mAvatarHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setLocalAvatarHash(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    .line 454
    return-void
.end method
