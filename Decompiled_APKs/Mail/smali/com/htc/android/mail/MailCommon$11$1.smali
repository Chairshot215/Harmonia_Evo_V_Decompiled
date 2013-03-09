.class Lcom/htc/android/mail/MailCommon$11$1;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon$11;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon$11;)V
    .locals 0
    .parameter

    .prologue
    .line 3288
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$11$1;->this$0:Lcom/htc/android/mail/MailCommon$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$11$1;->this$0:Lcom/htc/android/mail/MailCommon$11;

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon$11;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3291
    return-void
.end method
