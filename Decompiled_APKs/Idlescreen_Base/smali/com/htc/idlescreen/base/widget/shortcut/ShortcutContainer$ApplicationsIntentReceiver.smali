.class Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;-><init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, action:Ljava/lang/String;
    const-string v4, "ShortcutContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationsIntentReceiver action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 506
    .local v3, replacing:Z
    const-string v4, "ShortcutContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationsIntentReceiver packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v4, "ShortcutContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationsIntentReceiver replacing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 510
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v4, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->updateShortcutForPackage(Ljava/lang/String;)V

    .line 524
    .end local v1           #packageName:Ljava/lang/String;
    .end local v3           #replacing:Z
    :cond_2
    :goto_0
    return-void

    .line 512
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v3       #replacing:Z
    :cond_3
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    if-nez v3, :cond_2

    .line 514
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v4, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->removeShortcutsForPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v1           #packageName:Ljava/lang/String;
    .end local v3           #replacing:Z
    :cond_4
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 519
    const-string v4, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, packages:[Ljava/lang/String;
    const-string v4, "ShortcutContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationsIntentReceiver packages:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v4, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->updateShortcutForPackage([Ljava/lang/String;)V

    goto :goto_0
.end method
