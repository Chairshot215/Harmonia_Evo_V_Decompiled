.class public Lcom/android/htccontacts/CallLogSearchActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "CallLogSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/high16 v5, 0x1000

    .line 13
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/htccontacts/CallLogSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 15
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 16
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 18
    .local v1, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 19
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    new-instance v3, Landroid/content/Intent;

    .end local v3           #newIntent:Landroid/content/Intent;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .restart local v3       #newIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CallLogSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/CallLogSearchActivity;->finish()V

    .line 34
    return-void

    .line 25
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #newIntent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 27
    .restart local v3       #newIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CallLogSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
