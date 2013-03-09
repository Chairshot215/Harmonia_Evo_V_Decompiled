.class Lcom/googlecode/android/wifi/tether/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/MainActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 555
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 582
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    .line 584
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 585
    return-void

    .line 559
    :pswitch_0
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Unable to start tethering!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    goto :goto_0

    .line 564
    :pswitch_1
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Start progress bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$18(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 566
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$19(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$20(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Starting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadUpdateLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$21(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 571
    :pswitch_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$18(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 572
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$20(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "k /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$18(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 576
    :pswitch_3
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Finished download."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$20(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->progressTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$19(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadUpdateLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$21(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
