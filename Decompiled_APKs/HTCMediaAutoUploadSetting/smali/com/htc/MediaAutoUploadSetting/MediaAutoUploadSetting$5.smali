.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->launchTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "sec"

    .prologue
    .line 723
    const-string v1, "MediaAutoUploadSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    const/4 v2, 0x1

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v1, v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1902(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 727
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 728
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 729
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 730
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J
    invoke-static {v1, v2, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3102(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;J)J

    .line 732
    const-string v1, "MediaAutoUploadSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimePick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J
    invoke-static {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 735
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J
    invoke-static {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)J

    move-result-wide v3

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getTimeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 736
    return-void
.end method
