.class Lcom/htc/opensense/widget/BaseLoginActivity$18;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/BaseLoginActivity;->onLogoutButtonClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseLoginActivity"

    const-string v2, "Error in updating DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/BaseLoginActivity;->showDialog(I)V

    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
