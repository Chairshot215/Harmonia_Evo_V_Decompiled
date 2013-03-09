.class Lcom/android/settings/framework/app/DisplayResolutionDialog$2;
.super Ljava/lang/Object;
.source "DisplayResolutionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/DisplayResolutionDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v1, 0x2

    if-lt v1, p2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    #getter for: Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I
    invoke-static {v1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->access$000(Lcom/android/settings/framework/app/DisplayResolutionDialog;)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    #setter for: Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I
    invoke-static {v1, p2}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->access$002(Lcom/android/settings/framework/app/DisplayResolutionDialog;I)I

    .line 89
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_resolution_type"

    iget-object v3, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    #getter for: Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I
    invoke-static {v3}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->access$000(Lcom/android/settings/framework/app/DisplayResolutionDialog;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, target:Landroid/content/Intent;
    if-eqz v0, :cond_1

    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget-object v2, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    #getter for: Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I
    invoke-static {v2}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->access$000(Lcom/android/settings/framework/app/DisplayResolutionDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;->this$0:Lcom/android/settings/framework/app/DisplayResolutionDialog;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->finish()V

    .line 97
    .end local v0           #target:Landroid/content/Intent;
    :cond_2
    return-void
.end method
