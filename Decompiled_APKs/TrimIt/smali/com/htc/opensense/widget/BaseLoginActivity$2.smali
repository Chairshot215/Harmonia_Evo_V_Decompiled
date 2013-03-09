.class Lcom/htc/opensense/widget/BaseLoginActivity$2;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->setLoginUI()V
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
    .line 190
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$2;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity$2;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/BaseLoginActivity;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity$2;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/BaseLoginActivity;->showDialog(I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity$2;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/BaseLoginActivity;->onLoginButtonClick()V

    goto :goto_0
.end method
