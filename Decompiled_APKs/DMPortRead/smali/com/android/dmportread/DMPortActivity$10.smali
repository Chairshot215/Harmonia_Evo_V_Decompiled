.class Lcom/android/dmportread/DMPortActivity$10;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$10;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 571
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x61

    if-ne v12, v13, :cond_0

    .line 574
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/data/com.android.dmportread/boot"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v2           #file:Ljava/io/File;
    :goto_0
    :try_start_1
    new-instance v10, Ljava/io/FileWriter;

    const-string v12, "/data/data/com.android.dmportread/.setKey"

    invoke-direct {v10, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 585
    .local v10, tmpKey:Ljava/io/FileWriter;
    new-instance v9, Ljava/io/BufferedWriter;

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 586
    .local v9, tempout:Ljava/io/BufferedWriter;
    const-string v12, "1"

    invoke-virtual {v9, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 588
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    .end local v9           #tempout:Ljava/io/BufferedWriter;
    .end local v10           #tmpKey:Ljava/io/FileWriter;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/net/Socket;

    const-string v12, "127.0.0.1"

    const/16 v13, 0x2606

    invoke-direct {v6, v12, v13}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 596
    .local v6, server:Ljava/net/Socket;
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 597
    .local v0, In:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 598
    .local v5, out:Ljava/io/OutputStream;
    const/4 v12, 0x3

    new-array v7, v12, [B

    fill-array-data v7, :array_0

    .line 599
    .local v7, setMisc8:[B
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 600
    const/16 v12, 0x80

    new-array v8, v12, [B

    .line 601
    .local v8, tempbyte:[B
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    .line 602
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    .end local v0           #In:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v6           #server:Ljava/net/Socket;
    .end local v7           #setMisc8:[B
    .end local v8           #tempbyte:[B
    :goto_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/data/com.android.dmportread/.setKey"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 616
    .end local v2           #file:Ljava/io/File;
    :goto_3
    const-string v12, "DMCmdSvs"

    const-string v13, "Watch dog reboot intent "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v3, intent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v11, value:Landroid/os/Bundle;
    const-string v12, "com.android.service.Watchdog.REBOOT"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v12, "nowait"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 621
    const-string v12, "window"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    const-string v12, "interval"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    invoke-virtual {v3, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 625
    const-string v12, "android.intent.action.REBOOT"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    iget-object v12, p0, Lcom/android/dmportread/DMPortActivity$10;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v12, v3}, Lcom/android/dmportread/DMPortActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 636
    .end local v3           #intent:Landroid/content/Intent;
    .end local v11           #value:Landroid/os/Bundle;
    :goto_4
    return-void

    .line 577
    :catch_0
    move-exception v1

    .line 579
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "DMPORTC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete boot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 590
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 592
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v12, "DMPORTC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set Key"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 604
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 605
    .local v1, e:Ljava/io/IOException;
    const-string v12, "DMPORTC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set misc 8"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 612
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 613
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "DMPORTC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete Key"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 628
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_1

    .line 629
    new-instance v4, Ljava/io/File;

    const-string v12, "/data/data/com.android.dmportread/boot"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v4, keyfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 631
    iget-object v12, p0, Lcom/android/dmportread/DMPortActivity$10;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/dmportread/DMPortActivity;->access$500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_4

    .line 634
    .end local v4           #keyfile:Ljava/io/File;
    :cond_1
    iget-object v12, p0, Lcom/android/dmportread/DMPortActivity$10;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/dmportread/DMPortActivity;->access$500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_4

    .line 598
    nop

    :array_0
    .array-data 0x1
        0xect
        0x5t
        0x0t
    .end array-data
.end method
