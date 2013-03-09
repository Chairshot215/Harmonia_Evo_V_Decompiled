.class Lcom/htc/android/mail/easclient/OutOfOffice$4;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    .line 818
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 819
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 820
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$4;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2202(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 821
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 812
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 815
    return-void
.end method
