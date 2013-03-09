.class Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5973
    iput-object p1, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5973
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 5976
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5979
    .local v0, action:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application intent received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    :cond_0
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5982
    :cond_1
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE - Launcher.onReceive("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5984
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5987
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 5988
    .local v2, packageName:Ljava/lang/String;
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 5990
    .local v4, replacing:Z
    const/4 v1, 0x0

    .line 5992
    .local v1, op:I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 6032
    .end local v1           #op:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #replacing:Z
    :cond_3
    :goto_0
    return-void

    .line 5997
    .restart local v1       #op:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v4       #replacing:Z
    :cond_4
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5998
    const/4 v1, 0x2

    .line 6013
    :cond_5
    :goto_1
    if-eqz v1, :cond_3

    .line 6014
    iget-object v5, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v6, Lcom/htc/launcher/Launcher$PackageUpdatedTask;

    iget-object v7, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v2, v8, v9

    invoke-direct {v6, v7, v1, v8}, Lcom/htc/launcher/Launcher$PackageUpdatedTask;-><init>(Lcom/htc/launcher/Launcher;I[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->enqueuePackageUpdated(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V

    goto :goto_0

    .line 5999
    :cond_6
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6000
    if-nez v4, :cond_5

    .line 6001
    const/4 v1, 0x3

    goto :goto_1

    .line 6005
    :cond_7
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6006
    if-nez v4, :cond_8

    .line 6007
    const/4 v1, 0x1

    goto :goto_1

    .line 6009
    :cond_8
    const/4 v1, 0x2

    goto :goto_1

    .line 6017
    .end local v1           #op:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #replacing:Z
    :cond_9
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6018
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6020
    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-eqz v5, :cond_3

    .line 6023
    iget-object v5, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v6, Lcom/htc/launcher/Launcher$PackageUpdatedTask;

    iget-object v7, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v3}, Lcom/htc/launcher/Launcher$PackageUpdatedTask;-><init>(Lcom/htc/launcher/Launcher;I[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->enqueuePackageUpdated(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V

    goto :goto_0

    .line 6024
    .end local v3           #packages:[Ljava/lang/String;
    :cond_a
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6025
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6027
    .restart local v3       #packages:[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-eqz v5, :cond_3

    .line 6030
    iget-object v5, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v6, Lcom/htc/launcher/Launcher$PackageUpdatedTask;

    iget-object v7, p0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v3}, Lcom/htc/launcher/Launcher$PackageUpdatedTask;-><init>(Lcom/htc/launcher/Launcher;I[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->enqueuePackageUpdated(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V

    goto :goto_0
.end method
