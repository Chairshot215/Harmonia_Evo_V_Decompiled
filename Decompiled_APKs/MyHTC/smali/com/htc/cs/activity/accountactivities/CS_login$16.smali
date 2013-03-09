.class Lcom/htc/cs/activity/accountactivities/CS_login$16;
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
    .line 3115
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$16;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3120
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3122
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$16;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->startActivity(Landroid/content/Intent;)V

    .line 3123
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$16;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3124
    :catch_0
    move-exception v0

    .line 3125
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$16;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Failed to start MANAGE_PACKAGE_STORAGE!"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 3126
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$16;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
