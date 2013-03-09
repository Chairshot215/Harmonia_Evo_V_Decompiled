.class public Lcom/htc/appsharing/FriendStreamAttachmentSelectActivity;
.super Lcom/htc/appsharing/SelectToShareActivity;
.source "FriendStreamAttachmentSelectActivity.java"


# static fields
.field private static final ACTION_ATTACHMENT_RESPONSE:Ljava/lang/String; = "com.htc.friendstream.intent.action.ATTACHMENT_RESPONSE"

.field private static final ATTACHMENT_TYPE_APPS:I = 0x1

.field private static final EXTRA_ATTACHMENT_DATA:Ljava/lang/String; = "com.htc.friendstream.intent.EXTRA_ATTACHMENT_DATA"

.field private static final EXTRA_ATTACHMENT_MESSAGE:Ljava/lang/String; = "com.htc.friendstream.intent.EXTRA_ATTACHMENT_MESSAGE"

.field private static final EXTRA_ATTACHMENT_TYPE:Ljava/lang/String; = "com.htc.friendstream.intent.EXTRA_ATTACHMENT_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 21
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/appsharing/AppInfoManager;->getAppInfo(I)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    .line 22
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.friendstream.intent.action.ATTACHMENT_RESPONSE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, data:Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 26
    new-instance v2, Lcom/htc/appsharing/ComposeMaterial;

    invoke-static {p0}, Lcom/htc/appsharing/util/ShareUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/htc/appsharing/ComposeMaterial;-><init>(Lcom/htc/appsharing/AppInfo;Ljava/lang/String;)V

    .line 28
    .local v2, material:Lcom/htc/appsharing/ComposeMaterial;
    invoke-static {p0, v2}, Lcom/htc/appsharing/util/ShareUtil;->createComposeMessage(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, message:Ljava/lang/String;
    const-string v4, "com.htc.friendstream.intent.EXTRA_ATTACHMENT_TYPE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v4, "com.htc.friendstream.intent.EXTRA_ATTACHMENT_MESSAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v4, "com.htc.friendstream.intent.EXTRA_ATTACHMENT_DATA"

    new-array v5, v5, [Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/htc/appsharing/FriendStreamAttachmentSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 40
    .end local v2           #material:Lcom/htc/appsharing/ComposeMaterial;
    .end local v3           #message:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/appsharing/FriendStreamAttachmentSelectActivity;->finish()V

    .line 41
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/appsharing/FriendStreamAttachmentSelectActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
