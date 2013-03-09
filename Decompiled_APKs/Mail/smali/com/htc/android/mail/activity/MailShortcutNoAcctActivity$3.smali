.class Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;
.super Ljava/lang/Object;
.source "MailShortcutNoAcctActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 72
    iget-object v6, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    #getter for: Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->access$000(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 73
    .local v3, oldAccountId:J
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v1

    .line 74
    .local v1, newAccountId:J
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 77
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v6}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v4, v1, v2}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutNewIdInLine(Landroid/content/Context;JJ)V

    .line 79
    iget-object v6, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v6}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->finish()V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    const-class v7, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v6, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v6, v0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
