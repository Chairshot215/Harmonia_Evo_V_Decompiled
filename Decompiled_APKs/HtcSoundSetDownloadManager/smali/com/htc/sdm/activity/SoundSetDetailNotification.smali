.class public Lcom/htc/sdm/activity/SoundSetDetailNotification;
.super Lcom/htc/sdm/activity/SoundSetDetail;
.source "SoundSetDetailNotification.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mIsStartActivity:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetDetail;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mBundle:Landroid/os/Bundle;

    .line 9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mIsStartActivity:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->onDestroy()V

    .line 15
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mIsStartActivity:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mIsStartActivity:Ljava/lang/Boolean;

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetDetailNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SoundSetDetailNotification;->startActivity(Landroid/content/Intent;)V

    .line 27
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mBundle:Landroid/os/Bundle;

    .line 35
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetailNotification;->mIsStartActivity:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetailNotification;->finish()V

    .line 40
    :cond_0
    return-void
.end method
