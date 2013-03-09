.class Lcom/htc/socialnetwork/account/BaseLoginActivity$18;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 592
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->accountLogout()V

    .line 595
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "BaseLoginActivity"

    const-string v2, "Error in updating DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    .line 599
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
