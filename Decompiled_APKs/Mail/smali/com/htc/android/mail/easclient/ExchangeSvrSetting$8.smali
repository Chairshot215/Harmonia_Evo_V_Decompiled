.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1133
    if-nez p2, :cond_4

    .line 1134
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, emailAddr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eq v2, v4, :cond_0

    .line 1136
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_0
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1139
    .local v0, atPos:I
    if-ltz v0, :cond_5

    .line 1140
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, emailAccount:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1142
    .local v3, emailServer:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v4, v5, :cond_2

    .line 1144
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v4, v5, :cond_4

    .line 1147
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    .end local v0           #atPos:I
    .end local v1           #emailAccount:Ljava/lang/String;
    .end local v2           #emailAddr:Ljava/lang/String;
    .end local v3           #emailServer:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 1149
    .restart local v0       #atPos:I
    .restart local v2       #emailAddr:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
