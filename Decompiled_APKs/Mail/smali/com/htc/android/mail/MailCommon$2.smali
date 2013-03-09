.class Lcom/htc/android/mail/MailCommon$2;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;

.field final synthetic val$mTotalSize:I

.field final synthetic val$mUid:Ljava/lang/String;

.field final synthetic val$mailBoxId:J


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    iput-wide p2, p0, Lcom/htc/android/mail/MailCommon$2;->val$mailBoxId:J

    iput-object p4, p0, Lcom/htc/android/mail/MailCommon$2;->val$mUid:Ljava/lang/String;

    iput p5, p0, Lcom/htc/android/mail/MailCommon$2;->val$mTotalSize:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->setEnableSDsave(I)V

    .line 627
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailCommon$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailCommon$2$1;-><init>(Lcom/htc/android/mail/MailCommon$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 634
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$2;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mBtnView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->access$200(Lcom/htc/android/mail/MailCommon;)Landroid/view/View;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailCommon$2;->val$mailBoxId:J

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$2;->val$mUid:Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/mail/MailCommon$2;->val$mTotalSize:I

    #calls: Lcom/htc/android/mail/MailCommon;->downloadAttachment(Landroid/view/View;JLjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/MailCommon;->access$300(Lcom/htc/android/mail/MailCommon;Landroid/view/View;JLjava/lang/String;I)V

    .line 635
    return-void
.end method
