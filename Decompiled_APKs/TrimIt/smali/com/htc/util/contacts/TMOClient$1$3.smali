.class Lcom/htc/util/contacts/TMOClient$1$3;
.super Ljava/lang/Object;
.source "TMOClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/TMOClient$1;->myGroupsRetrieved(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/util/contacts/TMOClient$1;

.field final synthetic val$myGroups:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient$1;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$1$3;->this$1:Lcom/htc/util/contacts/TMOClient$1;

    iput-object p2, p0, Lcom/htc/util/contacts/TMOClient$1$3;->val$myGroups:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    :try_start_0
    const-string v1, "TMOClient"

    const-string v2, "Calling updateMyCommunityGroupMembers in a backgroud thread..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1$3;->this$1:Lcom/htc/util/contacts/TMOClient$1;

    iget-object v2, v1, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1$3;->val$myGroups:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/htc/clientprofileservice/Group;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/clientprofileservice/Group;

    invoke-virtual {v2, v1}, Lcom/htc/util/contacts/TMOClient;->updateMyCommunityGroups([Lcom/htc/clientprofileservice/Group;)V

    .line 226
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1$3;->this$1:Lcom/htc/util/contacts/TMOClient$1;

    iget-object v1, v1, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/util/contacts/TMOClient;->updateMyCommunityGroupMembers(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TMOClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
