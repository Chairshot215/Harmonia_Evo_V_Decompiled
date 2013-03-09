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
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/BaseLoginActivity;->onLogoutButtonClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "BaseLoginActivity"

    const-string v2, "Error in updating DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/BaseLoginActivity;->showDialog(I)V

    .line 473
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$18;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
