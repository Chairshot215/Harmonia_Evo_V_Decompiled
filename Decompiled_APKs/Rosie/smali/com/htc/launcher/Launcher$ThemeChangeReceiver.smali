.class Lcom/htc/launcher/Launcher$ThemeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6211
    iput-object p1, p0, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6211
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 6214
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Home"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThemeChange intent received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6215
    :cond_0
    const-string v3, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDestroying:Z
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$6600(Lcom/htc/launcher/Launcher;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    if-eqz v3, :cond_3

    .line 6220
    const-string v3, "workspace_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6221
    .local v2, workspaceId:I
    const-string v3, "backlight_effect"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 6222
    .local v1, backlighteffect:Z
    const-string v3, "extra_auto_save"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 6224
    .local v0, autoSave:Z
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "Home"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changed scene: scene id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    :cond_1
    if-lez v2, :cond_2

    .line 6226
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v2, v1, v0}, Lcom/htc/launcher/Launcher;->setCurrentWorkspace(IZZ)V

    .line 6227
    invoke-static {p1}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/launcher/PagesManager;->onSceneChange(I)V

    .line 6231
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 6233
    .end local v0           #autoSave:Z
    .end local v1           #backlighteffect:Z
    .end local v2           #workspaceId:I
    :cond_3
    return-void
.end method
