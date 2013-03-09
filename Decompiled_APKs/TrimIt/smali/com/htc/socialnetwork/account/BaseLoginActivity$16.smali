.class Lcom/htc/socialnetwork/account/BaseLoginActivity$16;
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
    .line 559
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->finish()V

    .line 563
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 567
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 568
    return-void
.end method
