.class Lcom/android/settings/GSensorCalibration$btnClicklistener;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "btnClicklistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorCalibration$btnClicklistener;-><init>(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 159
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v6}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c02d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 161
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 163
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->calibrateStatus:Landroid/widget/TextView;

    const v6, 0x7f0c02d9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/mpu"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    const-string v5, "GSensorCalibration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execute SysApi selfTest_HTC_USER:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/invensense/android/hardware/sysapi/SysApi;->selfTest_HTC_USER()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Ljava/io/FileInputStream;

    const-string v5, "/data/misc/gscal_result.txt"

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 176
    .local v3, reader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 178
    .local v4, str:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 180
    const-string v5, "GSensorCalibration"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v5, "[GsensorCalErrorCode]:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    const-string v6, "[GsensorCalErrorCode]: 0x"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "GSensorCalibration"

    const-string v6, "unregister Listener"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v5}, Lcom/android/settings/GSensorCalibration;->access$400(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v6}, Lcom/android/settings/GSensorCalibration;->access$300(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorEventListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 203
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v6, v6, Lcom/android/settings/GSensorCalibration;->mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

    const-wide/16 v7, 0xed8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v6, v6, Lcom/android/settings/GSensorCalibration;->mAnim:Lcom/android/settings/GSensorCalibration$Anim;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_1
    :goto_2
    return-void

    .line 184
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v6, v6, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/android/settings/GSensorCalibration;->code:I

    .line 185
    const-string v5, "GSensorCalibration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errorCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v7, v7, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v7, v7, Lcom/android/settings/GSensorCalibration;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    const-string v5, "GSensorCalibration"

    const-string v6, "Execute bma150_usr"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "/system/bin/bma150_usr"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 192
    .local v2, process:Ljava/lang/Process;
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v6

    iput v6, v5, Lcom/android/settings/GSensorCalibration;->code:I

    .line 193
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 207
    .end local v2           #process:Ljava/lang/Process;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v5, v5, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v6}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c02d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v5}, Lcom/android/settings/GSensorCalibration;->finish()V

    goto :goto_2
.end method
