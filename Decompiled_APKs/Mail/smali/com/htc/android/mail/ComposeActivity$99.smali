.class Lcom/htc/android/mail/ComposeActivity$99;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->initMeetingWidget()V
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
    .line 11818
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 11820
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$12900(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$99;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 11824
    return-void
.end method
