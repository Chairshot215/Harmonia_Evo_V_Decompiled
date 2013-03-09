.class Lcom/htc/android/epst/ListItemsActivity$9;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x2

    .line 1219
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-interface {v0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->setActivity(Lcom/htc/android/epst/ListItemsActivity;)V

    .line 1220
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Port;->setTempUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 1221
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_rtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    .line 1224
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1225
    const-string v0, "ListItemsActivity"

    const-string v1, "execute refurbish command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1260
    return-void

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_refurbish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1231
    const-string v0, "ListItemsActivity"

    const-string v1, "execute refurbish: data and status command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_scrtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1242
    const-string v0, "ListItemsActivity"

    const-string v1, "execute scrtn command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d_data_username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1247
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1248
    const-string v0, "ListItemsActivity"

    const-string v1, "execute data userdata command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1252
    :cond_4
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1254
    const-string v0, "ListItemsActivity"

    const-string v1, "execute clear(refurbish) command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$9;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
