.class public Lcom/htc/android/mail/AppMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppMonitorReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppMonitorReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 16
    const-string v4, "AppMonitorReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "favorite_intent"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v4, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    const-string v4, "favorite_intent"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 20
    const-string v4, "AppMonitorReceiver"

    const-string v5, "EXTRA_INTENT is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 24
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    const-string v4, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    const-string v4, "AppMonitorReceiver"

    const-string v5, "update mail shortcut>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1, v7}, Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcutInLine(Landroid/content/Context;Z)V

    goto :goto_0

    .line 28
    :cond_2
    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "type=vnd.android.cursor.dir/mail_tab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "shortcut=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 33
    .local v2, start:I
    const-string v4, "#"

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, end:I
    sub-int v4, v1, v2

    if-lez v4, :cond_3

    .line 35
    add-int/lit8 v4, v2, 0x18

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, accountId:I
    const-string v4, "AppMonitorReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mail inbox shortcut, accountId>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    int-to-long v4, v0

    invoke-static {p1, v4, v5, v7}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 39
    .end local v0           #accountId:I
    :cond_3
    const-string v4, "AppMonitorReceiver"

    const-string v5, "can\'t find accountId, not to update mail inbox shortcut"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
