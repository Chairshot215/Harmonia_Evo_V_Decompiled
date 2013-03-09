.class Lcom/htc/launcher/UpdateShortcutReceiver$1;
.super Ljava/lang/Object;
.source "UpdateShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/UpdateShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/UpdateShortcutReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->this$0:Lcom/htc/launcher/UpdateShortcutReceiver;

    iput-object p2, p0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 42
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "favorite_item_id"

    const-wide/16 v7, -0x1

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 44
    .local v9, itemId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "favorite_icon"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 45
    .local v11, iconParcel:Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "favorite_intent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 46
    .local v12, intent:Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "favorite_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "packagename"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "select"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, select:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "selectArgs"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, selectArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "newStyle"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 52
    .local v15, newStyle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v3, "priority"

    const/4 v7, -0x1

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 54
    .local v17, priority:I
    const-string v1, "UpdateShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpdateShortcutReceiver: itemId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " pkgName="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " title="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " newStyle="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " priority="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " intent="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " iconParcel="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-wide/16 v7, -0x1

    cmp-long v1, v9, v7

    if-nez v1, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->this$0:Lcom/htc/launcher/UpdateShortcutReceiver;

    move-object v3, v11

    check-cast v3, Landroid/graphics/Bitmap;

    #calls: Lcom/htc/launcher/UpdateShortcutReceiver;->keepIcon4AllApps(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/htc/launcher/UpdateShortcutReceiver;->access$000(Lcom/htc/launcher/UpdateShortcutReceiver;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->this$0:Lcom/htc/launcher/UpdateShortcutReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object v13, v4

    #calls: Lcom/htc/launcher/UpdateShortcutReceiver;->updateShortcut(Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;)V
    invoke-static/range {v7 .. v13}, Lcom/htc/launcher/UpdateShortcutReceiver;->access$100(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 64
    if-eqz v15, :cond_0

    sget-boolean v1, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    if-nez v1, :cond_0

    .line 65
    sget-boolean v1, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    if-nez v1, :cond_2

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    const-string v3, "launcher"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 67
    .local v16, preferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 68
    .local v14, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "newstyle_tip"

    const/4 v3, 0x1

    invoke-interface {v14, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    .line 72
    .end local v14           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->this$0:Lcom/htc/launcher/UpdateShortcutReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    move/from16 v0, v17

    #calls: Lcom/htc/launcher/UpdateShortcutReceiver;->showAppTip(Landroid/content/Context;JI)V
    invoke-static {v1, v3, v9, v10, v0}, Lcom/htc/launcher/UpdateShortcutReceiver;->access$200(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Context;JI)V

    goto :goto_0
.end method
