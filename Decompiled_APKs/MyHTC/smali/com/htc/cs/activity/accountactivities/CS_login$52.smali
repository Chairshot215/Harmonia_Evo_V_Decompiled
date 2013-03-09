.class Lcom/htc/cs/activity/accountactivities/CS_login$52;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$text:Landroid/widget/EditText;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3702
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setProvServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3709
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3710
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$302(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z

    .line 3715
    :goto_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3716
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 3719
    :cond_0
    return-void

    .line 3712
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$52;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$302(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z

    goto :goto_0
.end method
