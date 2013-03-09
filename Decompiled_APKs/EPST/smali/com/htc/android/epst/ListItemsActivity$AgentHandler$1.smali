.class Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity$AgentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 193
    const-string v1, "ListItemsActivity"

    const-string v3, "display UI in main Thread"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ListItemsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DISPLAY_UI,bRenewItems="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v4, v4, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z
    invoke-static {v4}, Lcom/htc/android/epst/ListItemsActivity;->access$300(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #calls: Lcom/htc/android/epst/ListItemsActivity;->getViewMap()Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$400(Lcom/htc/android/epst/ListItemsActivity;)Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/epst/SettingItem;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const v3, 0x7f02000a

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ITEM"

    aput-object v5, v4, v8

    new-array v5, v7, [I

    const v7, 0x7f060018

    aput v7, v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 201
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/android/epst/SettingItemViewBinder;

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v3, v3, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mMode:I
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$500(Lcom/htc/android/epst/ListItemsActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v4, v4, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {v1, v3, v4}, Lcom/htc/android/epst/SettingItemViewBinder;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 202
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v1, v0}, Lcom/htc/android/epst/ListItemsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v3, v3, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/ListItemsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$300(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #calls: Lcom/htc/android/epst/ListItemsActivity;->showProgress()V
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$600(Lcom/htc/android/epst/ListItemsActivity;)V

    .line 211
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v3, v3, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v4, v4, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v4}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/htc/android/epst/SettingValueUpdater;->getSettings(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingGroup;)V

    .line 214
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v3

    #calls: Lcom/htc/android/epst/ListItemsActivity;->getDialogId(Lcom/htc/android/epst/SettingItem;)I
    invoke-static {v1, v3}, Lcom/htc/android/epst/ListItemsActivity;->access$900(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)I

    move-result v6

    .line 216
    .local v6, dialogId:I
    if-eqz v6, :cond_2

    const/4 v1, 0x6

    if-eq v6, v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v1, v6}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 222
    .end local v6           #dialogId:I
    :cond_2
    return-void
.end method
