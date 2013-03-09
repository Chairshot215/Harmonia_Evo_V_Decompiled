.class Lcom/htc/android/mail/MailSearch$2;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$2;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeyListener.onKey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 406
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MailSearch"

    const-string v2, "Back to Mail directly!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$2;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/mail/MailSearch;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 408
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$2;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailSearch;->finish()V

    .line 416
    :cond_2
    :goto_0
    return v0

    .line 411
    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_4

    .line 412
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MailSearch"

    const-string v2, "Keep focus on EditText!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
