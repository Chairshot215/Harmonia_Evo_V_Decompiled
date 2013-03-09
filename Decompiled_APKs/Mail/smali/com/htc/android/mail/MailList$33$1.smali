.class Lcom/htc/android/mail/MailList$33$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$33;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$33;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$33;)V
    .locals 0
    .parameter

    .prologue
    .line 4680
    iput-object p1, p0, Lcom/htc/android/mail/MailList$33$1;->this$1:Lcom/htc/android/mail/MailList$33;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/htc/android/mail/MailList$33$1;->this$1:Lcom/htc/android/mail/MailList$33;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList$33$1;->this$1:Lcom/htc/android/mail/MailList$33;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4500(Lcom/htc/android/mail/MailList;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 4683
    return-void
.end method
