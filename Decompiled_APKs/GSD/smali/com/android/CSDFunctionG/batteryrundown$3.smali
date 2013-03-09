.class Lcom/android/CSDFunctionG/batteryrundown$3;
.super Landroid/os/Handler;
.source "batteryrundown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/batteryrundown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/batteryrundown;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/batteryrundown;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    sput-boolean v2, Lcom/android/CSDFunctionG/batteryrundown;->stoprecord:Z

    .line 278
    sget v0, Lcom/android/CSDFunctionG/batteryrundown;->iTesttime:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/CSDFunctionG/batteryrundown;->iTesttime:I

    .line 279
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    sget v1, Lcom/android/CSDFunctionG/batteryrundown;->iTesttime:I

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/batteryrundown;->SetTime(I)V

    .line 281
    sget v0, Lcom/android/CSDFunctionG/batteryrundown;->iTesttime:I

    if-gtz v0, :cond_1

    .line 283
    sput v2, Lcom/android/CSDFunctionG/batteryrundown;->iTimer:I

    .line 284
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iput-boolean v2, v0, Lcom/android/CSDFunctionG/batteryrundown;->b_TestFlag:Z

    .line 286
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/batteryrundown;->Remind_Alert()V

    goto :goto_0

    .line 301
    :pswitch_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/batteryrundown;->RemoveCharger()V

    goto :goto_0

    .line 304
    :pswitch_4
    sget-object v0, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg9:Landroid/widget/TextView;

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iget v0, v0, Lcom/android/CSDFunctionG/batteryrundown;->last_Level:I

    sget v1, Lcom/android/CSDFunctionG/GSD_DLL;->battery_check_level:I

    if-lt v0, v1, :cond_2

    .line 308
    sget-object v0, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget-object v0, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$3;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/batteryrundown;->PassorFail()V

    goto/16 :goto_0

    .line 313
    :cond_2
    sget-object v0, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    sget-object v0, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
