.class Lcom/htc/socialnetwork/account/BaseLoginActivity$4;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->initLayout()V
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

    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/16 v2, 0x42

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-boolean v2, v2, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isBlank()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->startTask()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
