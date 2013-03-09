.class Lcom/htc/android/mail/ComposeActivity$25;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$replyaddr:Ljava/lang/String;

.field final synthetic val$replyname:Ljava/lang/String;

.field final synthetic val$selectedTitleList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3615
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$25;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$replyname:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$replyaddr:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$selectedTitleList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3617
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$replyname:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$replyaddr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->createNewContact(Ljava/lang/String;Ljava/lang/String;)J
    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/ComposeActivity;->access$4800(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 3618
    .local v0, contactId:J
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ComposeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backgroundHandler for contactId>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3621
    .local v2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3623
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3625
    .local v5, tempContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->getExistGroupList(J)Ljava/util/ArrayList;
    invoke-static {v7, v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$4900(Lcom/htc/android/mail/ComposeActivity;J)Ljava/util/ArrayList;

    move-result-object v3

    .line 3627
    .local v3, exitTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 3628
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3629
    .local v6, title:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ComposeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ remove group : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v2, v6, v6}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3635
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$selectedTitleList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 3636
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->val$selectedTitleList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3637
    .restart local v6       #title:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ComposeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ select group : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$25;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, v5, v6, v6}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3641
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #title:Ljava/lang/String;
    :cond_4
    return-void
.end method
