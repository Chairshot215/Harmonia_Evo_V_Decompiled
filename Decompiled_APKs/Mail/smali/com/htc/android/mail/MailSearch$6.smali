.class Lcom/htc/android/mail/MailSearch$6;
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
    .line 443
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$6;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$6;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->moveBatchMail2()V

    .line 446
    return-void
.end method
