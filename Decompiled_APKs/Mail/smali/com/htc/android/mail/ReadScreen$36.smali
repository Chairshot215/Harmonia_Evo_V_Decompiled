.class Lcom/htc/android/mail/ReadScreen$36;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4623
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$36;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$36;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$1102(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 4626
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowRecipientDialog >>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$36;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1100(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4627
    :cond_0
    return-void
.end method
