.class Lcom/htc/android/mail/ReadScreen$11;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
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
    .line 1057
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$11;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$11;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->askBeforeDelete()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$11;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    .line 1063
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$11;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->deleteMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$1000(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0
.end method
