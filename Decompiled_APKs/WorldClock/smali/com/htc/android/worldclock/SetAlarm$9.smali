.class Lcom/htc/android/worldclock/SetAlarm$9;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/SetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 444
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 445
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$1300(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    iget-object v3, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v3}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v3

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mHour:I
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/SetAlarm;->access$1702(Lcom/htc/android/worldclock/SetAlarm;I)I

    .line 451
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    iget-object v3, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v3}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v3

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/SetAlarm;->access$1802(Lcom/htc/android/worldclock/SetAlarm;I)I

    .line 452
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    iget-object v3, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/worldclock/SetAlarm;->access$500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mDescription:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/SetAlarm;->access$1902(Lcom/htc/android/worldclock/SetAlarm;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$2000(Lcom/htc/android/worldclock/SetAlarm;)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$2100(Lcom/htc/android/worldclock/SetAlarm;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/Alarms;->addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 456
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, segment:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mId:I
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/SetAlarm;->access$2002(Lcom/htc/android/worldclock/SetAlarm;I)I

    .line 459
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$2000(Lcom/htc/android/worldclock/SetAlarm;)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 472
    .end local v0           #segment:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->saveAlarm(Z)V
    invoke-static {v2, v6}, Lcom/htc/android/worldclock/SetAlarm;->access$2200(Lcom/htc/android/worldclock/SetAlarm;Z)V

    .line 473
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2, v4}, Lcom/htc/android/worldclock/SetAlarm;->setResult(I)V

    .line 474
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/SetAlarm;->finish()V

    goto :goto_0

    .line 462
    .restart local v0       #segment:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2, v5}, Lcom/htc/android/worldclock/SetAlarm;->setResult(I)V

    .line 463
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/SetAlarm;->finish()V

    goto/16 :goto_0

    .line 467
    .end local v0           #segment:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2, v5}, Lcom/htc/android/worldclock/SetAlarm;->setResult(I)V

    .line 468
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$9;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/SetAlarm;->finish()V

    goto/16 :goto_0
.end method
