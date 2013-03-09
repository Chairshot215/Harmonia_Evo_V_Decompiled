.class Lcom/htc/android/mail/MailSearch$9$3;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailSearch$9;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$9$3;->this$1:Lcom/htc/android/mail/MailSearch$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9$3;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    const-string v0, "MailSearch"

    const-string v1, "finish return #3"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9$3;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$2300(Lcom/htc/android/mail/MailSearch;Z)V

    .line 1305
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9$3;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    if-eqz v0, :cond_0

    .line 1306
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailSearch"

    const-string v1, "setForceQuery"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9$3;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    iget-object v0, v0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->finalQuery()V

    goto :goto_0
.end method
