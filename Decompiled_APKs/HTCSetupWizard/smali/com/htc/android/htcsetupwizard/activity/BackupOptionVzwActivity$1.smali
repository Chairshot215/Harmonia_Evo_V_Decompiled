.class Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;
.super Ljava/lang/Object;
.source "BackupOptionVzwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->createRemindDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;

.field final synthetic val$checkboxLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;

    iput-object p2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->val$checkboxLayout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 452
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->val$checkboxLayout:Landroid/view/View;

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;Z)Z

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->showDialog(I)V

    .line 458
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z
    invoke-static {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;Z)Z

    goto :goto_0
.end method
