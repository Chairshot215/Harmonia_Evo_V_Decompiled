.class Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;
.super Landroid/os/Handler;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->showUnlockingStatus()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$700(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->showLoadingStatus()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$800(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->updProgressPrecent(I)V
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$900(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;I)V

    goto :goto_0

    .line 292
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "Progress Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationFinish()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
