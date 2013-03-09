.class Lcom/htc/android/mail/easclient/AccountNameSetting$3;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$3;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 306
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 310
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$3;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$3;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 317
    :cond_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
