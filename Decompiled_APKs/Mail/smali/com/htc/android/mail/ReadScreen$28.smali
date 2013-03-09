.class Lcom/htc/android/mail/ReadScreen$28;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field final synthetic val$replyaddr:Ljava/lang/String;

.field final synthetic val$replyname:Ljava/lang/String;

.field final synthetic val$selectedTitleList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3541
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$28;->this$0:Lcom/htc/android/mail/ReadScreen;

    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$28;->val$replyname:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/mail/ReadScreen$28;->val$replyaddr:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/android/mail/ReadScreen$28;->val$selectedTitleList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3543
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3544
    .local v2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3546
    .local v4, tempContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$28;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$28;->val$replyname:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$28;->val$replyaddr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ReadScreen;->createNewContact(Ljava/lang/String;Ljava/lang/String;)J
    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/ReadScreen;->access$4300(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 3548
    .local v0, contactId:J
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$28;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$28;->val$selectedTitleList:Ljava/util/ArrayList;

    #calls: Lcom/htc/android/mail/ReadScreen;->getGroupList(JLjava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v7, v0, v1, v8}, Lcom/htc/android/mail/ReadScreen;->access$4400(Lcom/htc/android/mail/ReadScreen;JLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3549
    .local v6, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3551
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3552
    .local v5, title:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ select group : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$28;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, v4, v5, v5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3556
    .end local v5           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method
