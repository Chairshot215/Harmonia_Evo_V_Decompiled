.class Lcom/htc/socialnetwork/account/BaseLoginActivity$2;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-boolean v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->startTask()V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    goto :goto_0
.end method
