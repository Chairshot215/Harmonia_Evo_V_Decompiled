.class Lcom/htc/android/mail/MailCommon$12$2;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon$12;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon$12;)V
    .locals 0
    .parameter

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$12$2;->this$0:Lcom/htc/android/mail/MailCommon$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$12$2;->this$0:Lcom/htc/android/mail/MailCommon$12;

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon$12;->val$context:Landroid/content/Context;

    const v1, 0x7f0b0132

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3321
    return-void
.end method
