.class Lcom/android/mms/util/ScheduledDialogActivity$3;
.super Ljava/lang/Object;
.source "ScheduledDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ScheduledDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ScheduledDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ScheduledDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/mms/util/ScheduledDialogActivity$3;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$3;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    #getter for: Lcom/android/mms/util/ScheduledDialogActivity;->mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
    invoke-static {v0}, Lcom/android/mms/util/ScheduledDialogActivity;->access$200(Lcom/android/mms/util/ScheduledDialogActivity;)Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$3;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    #getter for: Lcom/android/mms/util/ScheduledDialogActivity;->mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
    invoke-static {v0}, Lcom/android/mms/util/ScheduledDialogActivity;->access$200(Lcom/android/mms/util/ScheduledDialogActivity;)Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity$3;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    #getter for: Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/util/ScheduledDialogActivity;->access$300(Lcom/android/mms/util/ScheduledDialogActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;->onNegativeBtnClick(Landroid/content/Intent;)V

    .line 407
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 408
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$3;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    #calls: Lcom/android/mms/util/ScheduledDialogActivity;->runSchedule()V
    invoke-static {v0}, Lcom/android/mms/util/ScheduledDialogActivity;->access$400(Lcom/android/mms/util/ScheduledDialogActivity;)V

    .line 409
    return-void
.end method
