.class Lcom/htc/cs/activity/accountactivities/CS_login$7;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
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
    .line 1530
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->signUpOrSignIn:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1535
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1540
    .local v0, cursorPosition1:I
    if-eqz p2, :cond_2

    .line 1541
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1547
    :goto_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1548
    if-ltz v0, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1544
    :cond_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 1553
    .end local v0           #cursorPosition1:I
    :cond_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1558
    .restart local v0       #cursorPosition1:I
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->showPassword(Z)V
    invoke-static {v1, p2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    .line 1559
    if-ltz v0, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$7;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
