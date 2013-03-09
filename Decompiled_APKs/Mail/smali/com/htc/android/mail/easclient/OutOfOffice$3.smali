.class Lcom/htc/android/mail/easclient/OutOfOffice$3;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 757
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$3;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$3;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$3;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->saveSetting()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2400(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$3;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$3;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->finish()V

    goto :goto_0
.end method
