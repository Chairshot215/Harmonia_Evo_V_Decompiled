.class public Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkingQueryHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 5155
    const/4 v0, 0x0

    .line 5158
    .local v0, count:I
    packed-switch p1, :pswitch_data_0

    .line 5208
    :cond_0
    :goto_0
    return-void

    .line 5160
    :pswitch_0
    if-eqz p3, :cond_0

    .line 5162
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5163
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5164
    const-string v3, "ULog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send SMS Count Log, count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 5167
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "message_count"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "SMS"

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "value"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5172
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5174
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5179
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5176
    :catch_0
    move-exception v1

    .line 5177
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5179
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 5184
    :pswitch_1
    if-eqz p3, :cond_0

    .line 5186
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5187
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5188
    const-string v3, "ULog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send MMS Count Log, count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 5191
    .restart local v2       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "message_count"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "MMS"

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "value"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5196
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5198
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5203
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5200
    :catch_1
    move-exception v1

    .line 5201
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5203
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 5158
    nop

    :pswitch_data_0
    .packed-switch 0x4e24
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
