.class public Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeReceive;
.super Landroid/content/BroadcastReceiver;
.source "SkinCustomizeReceive.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SkinCustomizeReceive"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v3, "SkinCustomizeReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, strCustomizeMsg:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 34
    const-string v3, "SkinCustomizeReceive"

    const-string v4, "Didn\'t get CUSTOMIZED_REASON msg..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v2           #strCustomizeMsg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v2       #strCustomizeMsg:Ljava/lang/String;
    :cond_1
    const-string v3, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "SkinCustomizeReceive"

    const-string v4, "Get FOTA upgrade..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, customizeIntent:Landroid/content/Intent;
    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    const-string v4, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
