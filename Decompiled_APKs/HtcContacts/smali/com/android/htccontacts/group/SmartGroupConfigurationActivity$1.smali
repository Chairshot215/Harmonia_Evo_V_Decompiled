.class Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;
.super Ljava/lang/Object;
.source "SmartGroupConfigurationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createConfigNumberDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iput-object p2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x12

    .line 547
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 548
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 552
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 553
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iget v2, v2, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    if-le v2, v4, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    const/16 v3, 0x12

    iput v3, v2, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    #calls: Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->resetNumberConfigView()V
    invoke-static {v2}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->access$300(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 557
    .restart local v1       #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
