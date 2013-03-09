.class Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestBatchQuery(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

.field final synthetic val$username:Ljava/lang/String;

.field final synthetic val$vcardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->val$vcardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 9
    .parameter "packet"

    .prologue
    .line 371
    instance-of v5, p1, Lorg/jivesoftware/smackx/packet/VCard;

    if-nez v5, :cond_1

    .line 372
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    const-string v6, "GTalkService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestBatchQuery handlePacket: got packet of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p1

    .line 380
    check-cast v4, Lorg/jivesoftware/smackx/packet/VCard;

    .line 381
    .local v4, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->hasModified()Z

    move-result v1

    .line 382
    .local v1, hasModified:Z
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->isModified()Z

    move-result v3

    .line 384
    .local v3, isModified:Z
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    const-string v6, "GTalkService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestBatchQuery.handlePacket: received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$600(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 387
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    const-string v6, "GTalkService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "avatar for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->val$username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t modified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$700(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v0

    .line 390
    .local v0, data:[B
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 391
    :cond_3
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatarHash()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, hash:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->val$vcardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;->val$username:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->storeAvatarData(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0
.end method
