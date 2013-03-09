.class Lcom/android/dmportread/DMPortActivity$4$2$1;
.super Ljava/lang/Thread;
.source "DMPortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/dmportread/DMPortActivity$4$2;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity$4$2;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 218
    new-instance v6, Lcom/android/dmportread/dmdcmd;

    invoke-direct {v6}, Lcom/android/dmportread/dmdcmd;-><init>()V

    .line 219
    .local v6, testdmdcmd:Lcom/android/dmportread/dmdcmd;
    invoke-virtual {v6}, Lcom/android/dmportread/dmdcmd;->Conn()Z

    move-result v8

    if-ne v8, v10, :cond_0

    .line 220
    invoke-virtual {v6}, Lcom/android/dmportread/dmdcmd;->StartUse()V

    .line 221
    const-string v3, "AT+HTC_RMSL=0"

    .line 222
    .local v3, outstring:Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/android/dmportread/dmdcmd;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, instring:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/dmportread/dmdcmd;->DisConn()V

    .line 228
    const/16 v8, 0xb

    const/16 v9, 0x11

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v9, v9, Lcom/android/dmportread/DMPortActivity$4$2;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 230
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    const/4 v9, 0x0

    #setter for: Lcom/android/dmportread/DMPortActivity;->tryMSL:I
    invoke-static {v8, v9}, Lcom/android/dmportread/DMPortActivity;->access$602(Lcom/android/dmportread/DMPortActivity;I)I

    .line 231
    const-string v8, "DMPORTC"

    const-string v9, "equal!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v10, v10, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v10, v10, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-class v11, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Lcom/android/dmportread/DMPortActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    const-string v0, "/data/data/com.android.dmportread/boot"

    .line 235
    .local v0, KeyFile:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v7, tmpKey:Ljava/io/FileWriter;
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 237
    .local v5, tempout:Ljava/io/BufferedWriter;
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 239
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v5           #tempout:Ljava/io/BufferedWriter;
    .end local v7           #tmpKey:Ljava/io/FileWriter;
    :goto_0
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mSPCHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/dmportread/DMPortActivity;->access$700(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/dmportread/DMPortActivity$4$2$1$1;

    invoke-direct {v9, p0}, Lcom/android/dmportread/DMPortActivity$4$2$1$1;-><init>(Lcom/android/dmportread/DMPortActivity$4$2$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .end local v0           #KeyFile:Ljava/lang/String;
    .end local v2           #instring:Ljava/lang/String;
    .end local v3           #outstring:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 241
    .restart local v0       #KeyFile:Ljava/lang/String;
    .restart local v2       #instring:Ljava/lang/String;
    .restart local v3       #outstring:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "DMPORTC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set Key"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0           #KeyFile:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->tryMSL:I
    invoke-static {v8}, Lcom/android/dmportread/DMPortActivity;->access$600(Lcom/android/dmportread/DMPortActivity;)I

    move-result v8

    if-lez v8, :cond_2

    .line 259
    const-string v8, "DMPORTC"

    const-string v9, "wrong MSL twise "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->val$atmpContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 262
    .local v4, pm:Landroid/os/PowerManager;
    const-string v8, ""

    invoke-virtual {v4, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 267
    .end local v4           #pm:Landroid/os/PowerManager;
    :goto_2
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mSPCHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/dmportread/DMPortActivity;->access$700(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/dmportread/DMPortActivity$4$2$1$2;

    invoke-direct {v9, p0}, Lcom/android/dmportread/DMPortActivity$4$2$1$2;-><init>(Lcom/android/dmportread/DMPortActivity$4$2$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 265
    :cond_2
    iget-object v8, p0, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v8, v8, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->tryMSL:I
    invoke-static {v8, v10}, Lcom/android/dmportread/DMPortActivity;->access$602(Lcom/android/dmportread/DMPortActivity;I)I

    goto :goto_2
.end method
