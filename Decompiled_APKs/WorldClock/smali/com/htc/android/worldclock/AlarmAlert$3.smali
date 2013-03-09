.class Lcom/htc/android/worldclock/AlarmAlert$3;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->onInitParent()V
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
    .line 222
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$400(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$600(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$700(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlertDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$800(Lcom/htc/android/worldclock/AlarmAlert;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$700(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x2

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$3;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
