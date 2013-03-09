.class Lcom/htc/android/mail/ComposeActivity$86;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9709
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v6, 0x0

    .line 9711
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ComposeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endTimeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9713
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsDateTimeChanged:Z
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$11402(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 9715
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 9716
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 9717
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    iput v6, v2, Landroid/text/format/Time;->second:I

    .line 9718
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 9720
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->startTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$11500(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 9721
    .local v0, diff:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 9722
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->startTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11500(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 9723
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->startTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11500(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 9726
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateDateDisplay()V
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11700(Lcom/htc/android/mail/ComposeActivity;)V

    .line 9727
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$86;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateTimeDisplay()V
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11800(Lcom/htc/android/mail/ComposeActivity;)V

    .line 9728
    return-void
.end method
