.class public Lcom/htc/album/helper/SyncControlManager;
.super Ljava/lang/Object;
.source "SyncControlManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/helper/SyncControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/SyncControlManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncAllServices(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "doSync"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/htc/album/helper/SyncControlManager;->syncPeopleService(Z)V

    .line 47
    invoke-static {p0, p1}, Lcom/htc/album/helper/SyncControlManager;->syncMailService(Landroid/content/Context;Z)V

    .line 48
    return-void
.end method

.method public static syncMailService(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "doSync"

    .prologue
    .line 38
    sget-object v2, Lcom/htc/album/helper/SyncControlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[syncMailService] syncMailService = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "Resume Sync"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "com.htc.eas.intent.resumeSync"

    :goto_1
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, mail:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.htc.album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void

    .line 38
    .end local v0           #mail:Landroid/content/Intent;
    :cond_0
    const-string v1, "Pause Sync"

    goto :goto_0

    .line 39
    :cond_1
    const-string v1, "com.htc.eas.intent.pauseSync"

    goto :goto_1
.end method

.method public static syncPeopleService(Z)V
    .locals 3
    .parameter "doSync"

    .prologue
    .line 23
    const-string v1, "People"

    invoke-static {v1}, Lcom/htc/util/contacts/SyncControl;->getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;

    move-result-object v0

    .line 25
    .local v0, control:Lcom/htc/util/contacts/SyncControl;
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->removeAutoCancel()V

    .line 28
    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->startPendingSync()V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v1, "com.android.contacts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    goto :goto_0
.end method
