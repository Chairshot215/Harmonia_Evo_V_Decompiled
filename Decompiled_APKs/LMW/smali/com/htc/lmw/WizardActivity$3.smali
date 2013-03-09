.class Lcom/htc/lmw/WizardActivity$3;
.super Ljava/lang/Object;
.source "WizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardActivity;->updateProgressDialog(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardActivity;

.field final synthetic val$messageId:I

.field final synthetic val$progress:I

.field final synthetic val$progressMax:I

.field final synthetic val$titleId:I


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardActivity;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    iput p2, p0, Lcom/htc/lmw/WizardActivity$3;->val$titleId:I

    iput p3, p0, Lcom/htc/lmw/WizardActivity$3;->val$messageId:I

    iput p4, p0, Lcom/htc/lmw/WizardActivity$3;->val$progressMax:I

    iput p5, p0, Lcom/htc/lmw/WizardActivity$3;->val$progress:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/ProgressDialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/lmw/WizardActivity;->access$002(Lcom/htc/lmw/WizardActivity;Lcom/htc/lmw/ProgressDialog;)Lcom/htc/lmw/ProgressDialog;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$100(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    new-instance v1, Lcom/htc/lmw/ProgressDialog;

    iget-object v2, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/lmw/WizardActivity;->access$200(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/lmw/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/lmw/WizardActivity;->access$002(Lcom/htc/lmw/WizardActivity;Lcom/htc/lmw/ProgressDialog;)Lcom/htc/lmw/ProgressDialog;

    .line 150
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setCancelable(Z)V

    .line 151
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/htc/lmw/WizardActivity$3;->val$titleId:I

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setTitle(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/lmw/WizardActivity;->access$300(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/lmw/WizardActivity$3;->val$messageId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setText1Pattern(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/lmw/WizardActivity;->access$400(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004f

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setText2Pattern(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/ProgressDialog;->show()V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/htc/lmw/WizardActivity$3;->val$progressMax:I

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setProgressMax(I)V

    .line 157
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$3;->this$0:Lcom/htc/lmw/WizardActivity;

    #getter for: Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;
    invoke-static {v0}, Lcom/htc/lmw/WizardActivity;->access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/htc/lmw/WizardActivity$3;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method
