.class Lcom/htc/android/mail/ComposeActivity$98;
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
    .line 11809
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 11811
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endDateListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$12800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$98;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->endTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/ComposeActivity;->access$11600(Lcom/htc/android/mail/ComposeActivity;)Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 11814
    return-void
.end method
