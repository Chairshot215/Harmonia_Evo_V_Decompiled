.class Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountCommitRunnable"
.end annotation


# instance fields
.field mAccount:Lcom/htc/android/mail/Account;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 912
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 913
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mContext:Landroid/content/Context;

    .line 914
    iput-object p2, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mAccount:Lcom/htc/android/mail/Account;

    .line 915
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 919
    :cond_0
    return-void
.end method
