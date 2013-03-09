.class Lcom/android/phone/WarningAlertActivity$2;
.super Ljava/lang/Object;
.source "WarningAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 138
    iput-object p1, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 141
    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const v4, 0x7f0800c5

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 144
    .local v0, cbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/WarningAlertActivity;->access$100()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {}, Lcom/android/phone/WarningAlertActivity;->access$100()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x238d

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 148
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 149
    invoke-static {}, Lcom/android/phone/WarningAlertActivity;->access$100()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    invoke-static {v5}, Lcom/android/phone/WarningAlertActivity;->access$102(Landroid/os/Handler;)Landroid/os/Handler;

    .line 152
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    #getter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/WarningAlertActivity;->access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 153
    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    #setter for: Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2, v5}, Lcom/android/phone/WarningAlertActivity;->access$002(Lcom/android/phone/WarningAlertActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 155
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity$2;->this$0:Lcom/android/phone/WarningAlertActivity;

    invoke-virtual {v2}, Lcom/android/phone/WarningAlertActivity;->finish()V

    .line 156
    return-void

    .line 147
    .restart local v0       #cbox:Landroid/widget/CheckBox;
    .restart local v1       #message:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
