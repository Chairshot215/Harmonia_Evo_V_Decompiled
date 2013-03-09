.class Lcom/htc/android/mail/MailFormatSettings$7;
.super Ljava/lang/Object;
.source "MailFormatSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailFormatSettings;->updateAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailFormatSettings;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$defaultAccountChanged:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailFormatSettings;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/htc/android/mail/MailFormatSettings$7;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    iput-object p2, p0, Lcom/htc/android/mail/MailFormatSettings$7;->val$defaultAccountChanged:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/htc/android/mail/MailFormatSettings$7;->val$c:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$7;->val$defaultAccountChanged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$7;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailFormatSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings$7;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    #getter for: Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/MailFormatSettings;->access$500(Lcom/htc/android/mail/MailFormatSettings;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailProvider;->setDefaultAccountById(Landroid/content/Context;J)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$7;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    #getter for: Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailFormatSettings;->access$600(Lcom/htc/android/mail/MailFormatSettings;)Lcom/htc/android/mail/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings$7;->val$c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 471
    return-void
.end method
