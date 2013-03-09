.class Lcom/htc/android/mail/ReceiveSendSettings$4;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-wide v8, 0x7ffffffffffffffaL

    const/4 v7, 0x0

    .line 212
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 214
    .local v2, mailboxId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v5, v6, v3}, Lcom/htc/android/mail/Account;->setMailboxDefaultSyncEnabled(JZ)V

    goto :goto_0

    .line 218
    .end local v2           #mailboxId:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4, v8, v9}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 220
    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4, v8, v9}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 223
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/ReceiveSendSettings$4$1;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ReceiveSendSettings$4$1;-><init>(Lcom/htc/android/mail/ReceiveSendSettings$4;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 230
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiveSendSettings;->mFolderSyncPref:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #calls: Lcom/htc/android/mail/ReceiveSendSettings;->getFolderSyncPreferenceSummary()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/ReceiveSendSettings;->access$300(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 233
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ReceiveSendSettings;->removeDialog(I)V

    .line 234
    return-void
.end method
