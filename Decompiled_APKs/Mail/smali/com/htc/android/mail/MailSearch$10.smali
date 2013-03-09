.class Lcom/htc/android/mail/MailSearch$10;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1450
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$10;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$10;->this$0:Lcom/htc/android/mail/MailSearch;

    #calls: Lcom/htc/android/mail/MailSearch;->delMarkMail2()V
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$2400(Lcom/htc/android/mail/MailSearch;)V

    .line 1453
    return-void
.end method
