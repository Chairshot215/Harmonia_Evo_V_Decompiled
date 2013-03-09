.class Lcom/htc/android/mail/MailCommon$4;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$4;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$4;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$4;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->access$000(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Attachment;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    #calls: Lcom/htc/android/mail/MailCommon;->downloadAttachmentThread(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->access$400(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V

    .line 812
    return-void
.end method
