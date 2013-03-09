.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1316
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1318
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1322
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1326
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->setTypeface(Landroid/widget/EditText;Landroid/graphics/Typeface;)V

    .line 1331
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNextBtnEnable()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 1332
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->setTypeface(Landroid/widget/EditText;Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
