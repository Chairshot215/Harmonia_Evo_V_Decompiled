.class Lcom/htc/android/mail/MailSearch$8;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch;->meetingRespEvent(JIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;

.field final synthetic val$accountId:J

.field final synthetic val$markId:J

.field final synthetic val$respType:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$8;->this$0:Lcom/htc/android/mail/MailSearch;

    iput-wide p2, p0, Lcom/htc/android/mail/MailSearch$8;->val$accountId:J

    iput-wide p4, p0, Lcom/htc/android/mail/MailSearch$8;->val$markId:J

    iput p6, p0, Lcom/htc/android/mail/MailSearch$8;->val$respType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "childPosition"

    .prologue
    .line 1024
    packed-switch p2, :pswitch_data_0

    .line 1045
    :goto_0
    return-void

    .line 1026
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$8;->this$0:Lcom/htc/android/mail/MailSearch;

    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch$8;->val$accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch$8;->val$markId:J

    iget v5, p0, Lcom/htc/android/mail/MailSearch$8;->val$respType:I

    #calls: Lcom/htc/android/mail/MailSearch;->replyMailById(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->access$1100(Lcom/htc/android/mail/MailSearch;JJI)V

    goto :goto_0

    .line 1029
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailSearch$8$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailSearch$8$1;-><init>(Lcom/htc/android/mail/MailSearch$8;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1037
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailSearch$8$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailSearch$8$2;-><init>(Lcom/htc/android/mail/MailSearch$8;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
