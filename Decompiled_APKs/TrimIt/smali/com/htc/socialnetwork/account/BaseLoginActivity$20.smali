.class Lcom/htc/socialnetwork/account/BaseLoginActivity$20;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->handleError(Lcom/htc/socialnetwork/SocialNetworkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

.field final synthetic val$dialog_type:I


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iput p2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->val$dialog_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 749
    :try_start_0
    const-string v1, "BaseLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show error dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->val$dialog_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string v1, "BaseLoginActivity"

    const-string v2, "is finishing return "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;->val$dialog_type:I

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
