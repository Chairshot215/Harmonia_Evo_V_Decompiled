.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1334
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1341
    .local v0, cursorPosition:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPassword(Z)V
    invoke-static {v1, p2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)V

    .line 1342
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
