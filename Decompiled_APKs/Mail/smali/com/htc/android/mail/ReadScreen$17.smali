.class Lcom/htc/android/mail/ReadScreen$17;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->meetingRespEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field final synthetic val$respType:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    iput p2, p0, Lcom/htc/android/mail/ReadScreen$17;->val$respType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$1200(Lcom/htc/android/mail/ReadScreen;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1142
    :goto_0
    return-void

    .line 1121
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v1, p0, Lcom/htc/android/mail/ReadScreen$17;->val$respType:I

    #calls: Lcom/htc/android/mail/ReadScreen;->replyMail(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$200(Lcom/htc/android/mail/ReadScreen;I)V

    goto :goto_0

    .line 1124
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$17$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$17$1;-><init>(Lcom/htc/android/mail/ReadScreen$17;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1133
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$17$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$17$2;-><init>(Lcom/htc/android/mail/ReadScreen$17;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
