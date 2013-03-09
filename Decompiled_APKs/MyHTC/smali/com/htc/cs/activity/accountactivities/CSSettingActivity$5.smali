.class Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;
.super Ljava/lang/Object;
.source "CSSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->createCSSettingActivity(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #calls: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$000(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->removeDialog(I)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.dashboard.sendsetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intentcs:Landroid/content/Intent;
    const-string v1, "htcNewsLetter"

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->subscribing:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$100(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-virtual {v1, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->setResult(I)V

    .line 172
    .end local v0           #intentcs:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->finish()V

    .line 173
    return-void
.end method
