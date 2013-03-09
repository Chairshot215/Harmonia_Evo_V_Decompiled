.class Lcom/htc/android/mail/MailSearch$7;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch;->moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V
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
    .line 864
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$7;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$7;->this$0:Lcom/htc/android/mail/MailSearch;

    #calls: Lcom/htc/android/mail/MailSearch;->moveMarkMailtoFold2(I)V
    invoke-static {v0, p2}, Lcom/htc/android/mail/MailSearch;->access$1000(Lcom/htc/android/mail/MailSearch;I)V

    .line 867
    return-void
.end method
