.class Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;
.super Ljava/lang/Object;
.source "EASChangePwdDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASChangePwdDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EASChangePwdDialog"

    const-string v3, "press positivie button"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->access$100(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->access$200(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string v2, "intent.eas.mode.wizard"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->startActivity(Landroid/content/Intent;)V

    .line 50
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->finish()V

    .line 51
    return-void
.end method
