.class Lcom/htc/android/mail/MailCommon$5$1;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailCommon$5;

.field final synthetic val$mTotalSize:I

.field final synthetic val$mUid:Ljava/lang/String;

.field final synthetic val$mailBoxId:J


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon$5;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$5$1;->this$1:Lcom/htc/android/mail/MailCommon$5;

    iput-wide p2, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mailBoxId:J

    iput-object p4, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mUid:Ljava/lang/String;

    iput p5, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mTotalSize:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1182
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v1, "ui to prepareDownloadAttachment>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$5$1;->this$1:Lcom/htc/android/mail/MailCommon$5;

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon$5;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$5$1;->this$1:Lcom/htc/android/mail/MailCommon$5;

    iget-object v1, v1, Lcom/htc/android/mail/MailCommon$5;->val$view:Landroid/view/View;

    iget-wide v2, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mailBoxId:J

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mUid:Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/mail/MailCommon$5$1;->val$mTotalSize:I

    #calls: Lcom/htc/android/mail/MailCommon;->prepareDownloadAttachment(Landroid/view/View;JLjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/MailCommon;->access$1000(Lcom/htc/android/mail/MailCommon;Landroid/view/View;JLjava/lang/String;I)V

    .line 1185
    return-void
.end method
