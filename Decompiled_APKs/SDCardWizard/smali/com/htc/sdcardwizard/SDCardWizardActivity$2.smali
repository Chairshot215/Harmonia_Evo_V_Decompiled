.class Lcom/htc/sdcardwizard/SDCardWizardActivity$2;
.super Ljava/lang/Thread;
.source "SDCardWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardWizardActivity;->updateListItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

.field final synthetic val$pause:Z


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardWizardActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    iput-boolean p2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->val$pause:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    iget-boolean v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->val$pause:Z

    if-eqz v1, :cond_0

    .line 192
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;
    invoke-static {v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->access$300(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/CategoryItems;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sdcardwizard/CategoryItems;->update(Landroid/app/Activity;Lcom/htc/sdcardwizard/UpdateListener;)V

    .line 199
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
