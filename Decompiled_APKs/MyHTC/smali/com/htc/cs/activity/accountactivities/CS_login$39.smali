.class Lcom/htc/cs/activity/accountactivities/CS_login$39;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 3483
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$39;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$39;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 3489
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$39;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getRegion(I)V

    .line 3490
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$39;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->canSignIn:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$4402(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z

    .line 3491
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$39;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->phoneNumberSigninUI(Z)V
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3200(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    .line 3493
    return-void
.end method
