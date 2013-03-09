.class Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;
.super Landroid/content/BroadcastReceiver;
.source "First_Auto_Comp_Word_Test.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->receiverRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1st_AUTO_COMP_TEST_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mInstance:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;
    invoke-static {v1}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$400(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    move-result-object v1

    const-string v2, "Please Wait"

    const-string v3, "Analyzing data..."

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mProgress:Landroid/app/ProgressDialog;

    .line 149
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$500(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$500(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "***Analyzing Log***"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    const-string v1, "out"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$602(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #calls: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->doAnalyzeLog()V
    invoke-static {v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$700(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    :cond_1
    return-void
.end method
