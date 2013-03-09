.class Lcom/htc/android/mail/MailList$RequestHandler$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RequestHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList$RequestHandler;

.field final synthetic val$target:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4998
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RequestHandler$1;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$RequestHandler$1;->val$target:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5000
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RequestHandler$1;->val$target:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->refresh()V

    .line 5001
    return-void
.end method
