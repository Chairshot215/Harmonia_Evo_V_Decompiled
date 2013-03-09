.class Lcom/htc/CustomizationSetup/SIMChangedActivity$4;
.super Ljava/lang/Object;
.source "SIMChangedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/SIMChangedActivity;->createSIMChangedConfirmation()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 198
    const-string v1, "SIMChangedActivity"

    const-string v2, "createSIMChangedConfirmation() is dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #getter for: Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$200(Lcom/htc/CustomizationSetup/SIMChangedActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #getter for: Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$600(Lcom/htc/CustomizationSetup/SIMChangedActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #getter for: Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$600(Lcom/htc/CustomizationSetup/SIMChangedActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mvno_operator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, mvnoIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.OperatorPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-virtual {v1, v0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-virtual {v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->finish()V

    .line 210
    .end local v0           #mvnoIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
