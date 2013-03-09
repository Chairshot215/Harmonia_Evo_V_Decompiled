.class public Lcom/htc/appsharing/FriendStreamSelectShareActivity;
.super Lcom/htc/appsharing/SelectToShareActivity;
.source "FriendStreamSelectShareActivity.java"


# static fields
.field private static final EXTRA_APP_INFO:Ljava/lang/String; = "com.htc.friendstream.intent.EXTRA_APP_INFO"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "com.htc.friendstream.intent.EXTRA_MESSAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/appsharing/AppInfoManager;->getAppInfo(I)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    .line 18
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v1, data:Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 22
    new-instance v2, Lcom/htc/appsharing/ComposeMaterial;

    invoke-static {p0}, Lcom/htc/appsharing/util/ShareUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/htc/appsharing/ComposeMaterial;-><init>(Lcom/htc/appsharing/AppInfo;Ljava/lang/String;)V

    .line 24
    .local v2, material:Lcom/htc/appsharing/ComposeMaterial;
    invoke-static {p0, v2}, Lcom/htc/appsharing/util/ShareUtil;->createComposeMessage(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, message:Ljava/lang/String;
    const-string v4, "com.htc.friendstream.intent.EXTRA_MESSAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v4, "com.htc.friendstream.intent.EXTRA_APP_INFO"

    iget-object v5, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/htc/appsharing/FriendStreamSelectShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 34
    .end local v2           #material:Lcom/htc/appsharing/ComposeMaterial;
    .end local v3           #message:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/appsharing/FriendStreamSelectShareActivity;->finish()V

    .line 35
    return-void

    .line 31
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/htc/appsharing/FriendStreamSelectShareActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
