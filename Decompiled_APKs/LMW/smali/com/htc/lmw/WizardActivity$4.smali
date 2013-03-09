.class Lcom/htc/lmw/WizardActivity$4;
.super Ljava/lang/Object;
.source "WizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardActivity;->dismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardActivity;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/lmw/WizardActivity$4;->this$0:Lcom/htc/lmw/WizardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$4;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$4;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/ProgressDialog;->dismiss()V

    .line 175
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$4;->this$0:Lcom/htc/lmw/WizardActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/lmw/WizardActivity;->access$002(Lcom/htc/lmw/WizardActivity;Lcom/htc/lmw/ProgressDialog;)Lcom/htc/lmw/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method
