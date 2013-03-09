.class Lcom/htc/android/mail/huxservice/HuxEditAccount$1;
.super Ljava/lang/Object;
.source "HuxEditAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxEditAccount;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotification(J)I

    .line 49
    return-void
.end method
