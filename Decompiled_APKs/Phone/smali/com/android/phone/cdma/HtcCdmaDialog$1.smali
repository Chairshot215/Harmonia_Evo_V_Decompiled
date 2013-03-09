.class Lcom/android/phone/cdma/HtcCdmaDialog$1;
.super Landroid/os/Handler;
.source "HtcCdmaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/cdma/HtcCdmaDialog;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/cdma/HtcCdmaDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/cdma/HtcCdmaDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 242
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    const/4 v2, 0x0

    .line 246
    .local v2, prevDialogId:I
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$000(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$000(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$000(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v5}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mCanDisplayed:Z
    invoke-static {v5}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$300(Lcom/android/phone/cdma/HtcCdmaDialog;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, needToUpdate:Z
    if-nez v1, :cond_2

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_2

    .line 255
    const/4 v1, 0x1

    .line 257
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/phone/cdma/HtcCdmaDialog$1;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    const/4 v1, 0x1

    .line 261
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mCanDisplayed:Z
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$300(Lcom/android/phone/cdma/HtcCdmaDialog;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 264
    const/4 v1, 0x1

    .line 267
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/phone/cdma/HtcCdmaDialog$1;->removeMessages(I)V

    .line 268
    invoke-virtual {p0, v7}, Lcom/android/phone/cdma/HtcCdmaDialog$1;->removeMessages(I)V

    .line 269
    if-eqz v1, :cond_0

    .line 270
    if-eqz v2, :cond_5

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v3, v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    iget-object v4, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v4}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$002(Lcom/android/phone/cdma/HtcCdmaDialog;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 278
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    iget-object v4, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v4}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Lcom/android/phone/cdma/HtcCdmaDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 279
    if-eqz v2, :cond_0

    .line 281
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v3, v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->removeDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has removed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 274
    .restart local v0       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has dismissed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #needToUpdate:Z
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/phone/cdma/HtcCdmaDialog$1;->removeMessages(I)V

    .line 290
    invoke-virtual {p0, v7}, Lcom/android/phone/cdma/HtcCdmaDialog$1;->removeMessages(I)V

    .line 291
    if-eqz v2, :cond_7

    .line 293
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v3, v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 298
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v3, v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->removeDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    :goto_3
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #setter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;
    invoke-static {v3, v8}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$002(Lcom/android/phone/cdma/HtcCdmaDialog;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 304
    :cond_7
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->finish()V

    goto/16 :goto_0

    .line 294
    :catch_2
    move-exception v0

    .line 295
    .restart local v0       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already dismissed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 299
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 300
    .restart local v0       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog$1;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already removed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
