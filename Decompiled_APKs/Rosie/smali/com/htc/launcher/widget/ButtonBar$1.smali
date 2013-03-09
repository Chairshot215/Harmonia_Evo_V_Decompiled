.class Lcom/htc/launcher/widget/ButtonBar$1;
.super Ljava/lang/Object;
.source "ButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/ButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/ButtonBar;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/ButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "button"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 337
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->startCallActivity()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->onClickAllProgram()V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->onClickPhone()V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const-string v2, "Handle buttons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " right_btn.mDrawer.isMoving() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v4}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    const-string v2, "Handle buttons"

    const-string v3, " right_btn is working"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->removeTutorialNotice()V

    .line 316
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 318
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.htc.htcnew"

    const-string v3, "com.htc.htcnew.HTCNew"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "android.htc.intent.action.SHARE_BUTTON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Handle buttons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 329
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->onClickAllProgram()V

    goto/16 :goto_0

    .line 332
    :cond_4
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/launcher/Launcher;->isNeedLaunchAddToHome:Z

    .line 333
    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar$1;->this$0:Lcom/htc/launcher/widget/ButtonBar;

    #getter for: Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/widget/ButtonBar;->access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    goto/16 :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x7f07000e
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
