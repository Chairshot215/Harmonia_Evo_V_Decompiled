.class Lcom/htc/android/worldclock/AlarmAlert$9;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->onAlarmIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$400(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$600(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlertDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$800(Lcom/htc/android/worldclock/AlarmAlert;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlertDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$800(Lcom/htc/android/worldclock/AlarmAlert;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$700(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$9;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v0, v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
