.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;
.super Ljava/lang/Thread;
.source "HtcContactBlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

.field final synthetic val$contactUri:Landroid/net/Uri;

.field final synthetic val$isSim:Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;ZLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iput-boolean p2, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->val$isSim:Z

    iput-object p3, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->val$contactUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 464
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->val$isSim:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->val$contactUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;->val$contactUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method
