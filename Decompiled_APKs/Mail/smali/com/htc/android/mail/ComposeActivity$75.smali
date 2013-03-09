.class Lcom/htc/android/mail/ComposeActivity$75;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8505
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$75;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "i"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8508
    const/4 v2, 0x4

    if-ne v2, p2, :cond_0

    .line 8510
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$75;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ComposeActivity;->removeDialog(I)V

    .line 8511
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$75;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Sending mail canceled"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 8512
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$75;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-boolean v1, v2, Lcom/htc/android/mail/ComposeActivity;->sending:Z

    .line 8515
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
