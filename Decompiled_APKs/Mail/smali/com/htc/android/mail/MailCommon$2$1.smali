.class Lcom/htc/android/mail/MailCommon$2$1;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailCommon$2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon$2;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$2$1;->this$1:Lcom/htc/android/mail/MailCommon$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$2$1;->this$1:Lcom/htc/android/mail/MailCommon$2;

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$2$1;->this$1:Lcom/htc/android/mail/MailCommon$2;

    iget-object v1, v1, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v1, v1, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 631
    return-void
.end method
