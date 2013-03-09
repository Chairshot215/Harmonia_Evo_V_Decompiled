.class Lcom/htc/laputa/engine/util/ContentStoreCmd$1;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;->openCatalog(Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;Lcom/htc/laputa/engine/util/CmdListener;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

.field final synthetic val$catalogItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->val$catalogItemList:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 8
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 118
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onRetReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->val$catalogItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 121
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/laputa/engine/util/CmdListener;

    .line 122
    .local v3, listener:Lcom/htc/laputa/engine/util/CmdListener;
    if-nez v3, :cond_0

    .line 123
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v5, "2"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 128
    .local v4, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-nez v4, :cond_1

    .line 130
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "get null retList"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v3, p1, p2}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 136
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v2, Lcom/htc/laputa/engine/util/ContentStoreItem;

    invoke-direct {v2, v0}, Lcom/htc/laputa/engine/util/ContentStoreItem;-><init>(Landroid/os/Bundle;)V

    .line 137
    .local v2, item:Lcom/htc/laputa/engine/util/ContentStoreItem;
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->val$catalogItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #item:Lcom/htc/laputa/engine/util/ContentStoreItem;
    :cond_2
    const-string v5, "1"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onRetReceive() Fianl and notifyComplete."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v5, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v5, 0x1

    invoke-interface {v3, p1, v5}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    goto :goto_0

    .line 146
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    goto :goto_0
.end method
