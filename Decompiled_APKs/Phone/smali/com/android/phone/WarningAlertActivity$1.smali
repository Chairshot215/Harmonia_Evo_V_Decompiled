.class Lcom/android/phone/WarningAlertActivity$1;
.super Ljava/lang/Object;
.source "WarningAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WarningAlertActivity;->showAlertMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WarningAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/WarningAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 126
    .local v0, cbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/WarningAlertActivity;->access$100()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {v3}, Lcom/android/phone/WarningAlertActivity;->access$102(Landroid/os/Handler;)Landroid/os/Handler;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 131
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    #setter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v3}, Lcom/android/phone/WarningAlertActivity;->access$002(Lcom/android/phone/WarningAlertActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 133
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity$1;->this$0:Lcom/android/phone/WarningAlertActivity;

    invoke-virtual {v1}, Lcom/android/phone/WarningAlertActivity;->finish()V

    .line 134
    return-void
.end method
