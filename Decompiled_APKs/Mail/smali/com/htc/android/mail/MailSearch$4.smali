.class Lcom/htc/android/mail/MailSearch$4;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 426
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$4;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 428
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    const-string v1, "doBatchMarkRead>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$4;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->implSetReadMail()V

    .line 430
    return-void
.end method
