.class Lcom/s0up/goomanager/GooManagerActivity$1;
.super Ljava/lang/Object;
.source "GooManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GooManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v16, Lcom/s0up/goomanager/FileListActivity;

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v10, i:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 117
    .local v4, INSTALL:I
    const/4 v1, 0x1

    .line 118
    .local v1, BROWSE:I
    const/4 v8, 0x2

    .line 119
    .local v8, UPDATE:I
    const/4 v3, 0x3

    .line 120
    .local v3, GAPPS:I
    const/4 v6, 0x4

    .line 121
    .local v6, RECOVERY:I
    const/4 v2, 0x5

    .line 122
    .local v2, FLASH:I
    const/4 v7, 0x6

    .line 123
    .local v7, SETTINGS:I
    const/4 v5, 0x7

    .line 124
    .local v5, LOGIN:I
    packed-switch p3, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 126
    :pswitch_0
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v16, Lcom/s0up/goomanager/FlashActivity;

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v9, flashActivity:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v9}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    .end local v9           #flashActivity:Landroid/content/Intent;
    :pswitch_1
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    .line 131
    const-class v16, Lcom/s0up/goomanager/FileListActivity;

    .line 130
    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v12, romDownloadsIntent:Landroid/content/Intent;
    const-string v15, "board"

    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getBoardName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v15, "path"

    const-string v16, "/devs"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v12}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    .end local v12           #romDownloadsIntent:Landroid/content/Intent;
    :pswitch_2
    const-string v15, "path"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v10}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :pswitch_3
    new-instance v14, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;-><init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;)V

    .line 142
    .local v14, updateCheck:Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "update"

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 146
    .end local v14           #updateCheck:Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;
    :pswitch_4
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 147
    new-instance v15, Lcom/s0up/goomanager/GetLatestGapps;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/s0up/goomanager/GetLatestGapps;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/s0up/goomanager/GetLatestGapps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 149
    :cond_0
    const-string v15, "path"

    const-string v16, "/gapps"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v10}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    #calls: Lcom/s0up/goomanager/GooManagerActivity;->rebootRecovery()V
    invoke-static {v15}, Lcom/s0up/goomanager/GooManagerActivity;->access$1(Lcom/s0up/goomanager/GooManagerActivity;)V

    goto/16 :goto_0

    .line 157
    :pswitch_6
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v16, Lcom/s0up/goomanager/SettingsActivity;

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v13, settingsIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v13}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 162
    .end local v13           #settingsIntent:Landroid/content/Intent;
    :pswitch_7
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v16, Lcom/s0up/goomanager/LoginActivity;

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v11, loginActivity:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    iget-boolean v15, v15, Lcom/s0up/goomanager/GooManagerActivity;->isLoggedin:Z

    if-eqz v15, :cond_1

    .line 164
    const-string v15, "action"

    const-string v16, "logout"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15, v11}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/s0up/goomanager/GooManagerActivity$1;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v15}, Lcom/s0up/goomanager/GooManagerActivity;->finish()V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
