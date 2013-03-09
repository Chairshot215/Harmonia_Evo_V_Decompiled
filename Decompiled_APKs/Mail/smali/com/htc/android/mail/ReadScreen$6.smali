.class Lcom/htc/android/mail/ReadScreen$6;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1007
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnClickMeetingDecline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$600(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$600(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x6

    #calls: Lcom/htc/android/mail/ReadScreen;->meetingRespEvent(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$700(Lcom/htc/android/mail/ReadScreen;I)V

    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$6;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto :goto_0
.end method
