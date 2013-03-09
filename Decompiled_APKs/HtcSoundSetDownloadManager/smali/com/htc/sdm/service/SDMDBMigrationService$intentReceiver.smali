.class Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDMDBMigrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/service/SDMDBMigrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "intentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/service/SDMDBMigrationService;


# direct methods
.method private constructor <init>(Lcom/htc/sdm/service/SDMDBMigrationService;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdm/service/SDMDBMigrationService;Lcom/htc/sdm/service/SDMDBMigrationService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;-><init>(Lcom/htc/sdm/service/SDMDBMigrationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 122
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/htc/sdm/service/SDMDBMigrationIntentService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    const-string v2, "ringtoneSize"

    iget-object v3, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    #getter for: Lcom/htc/sdm/service/SDMDBMigrationService;->ringtoneSize:I
    invoke-static {v3}, Lcom/htc/sdm/service/SDMDBMigrationService;->access$100(Lcom/htc/sdm/service/SDMDBMigrationService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v2, "notificationSize"

    iget-object v3, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    #getter for: Lcom/htc/sdm/service/SDMDBMigrationService;->notificationSize:I
    invoke-static {v3}, Lcom/htc/sdm/service/SDMDBMigrationService;->access$200(Lcom/htc/sdm/service/SDMDBMigrationService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v2, "alarmSize"

    iget-object v3, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    #getter for: Lcom/htc/sdm/service/SDMDBMigrationService;->alarmSize:I
    invoke-static {v3}, Lcom/htc/sdm/service/SDMDBMigrationService;->access$300(Lcom/htc/sdm/service/SDMDBMigrationService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v2, "settingSize"

    iget-object v3, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    #getter for: Lcom/htc/sdm/service/SDMDBMigrationService;->settingSize:I
    invoke-static {v3}, Lcom/htc/sdm/service/SDMDBMigrationService;->access$400(Lcom/htc/sdm/service/SDMDBMigrationService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v2, "old_uris"

    iget-object v3, p0, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;->this$0:Lcom/htc/sdm/service/SDMDBMigrationService;

    #getter for: Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/sdm/service/SDMDBMigrationService;->access$500(Lcom/htc/sdm/service/SDMDBMigrationService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sdm.service.SDMDBMigrationService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, sIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
