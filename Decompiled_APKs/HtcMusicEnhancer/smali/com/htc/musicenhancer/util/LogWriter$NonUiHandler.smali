.class final Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
.super Landroid/os/Handler;
.source "LogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/util/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/util/LogWriter;


# direct methods
.method public constructor <init>(Lcom/htc/musicenhancer/util/LogWriter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 113
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/musicenhancer/util/LogWriter;->mStringBuffer:Ljava/lang/StringBuffer;

    .line 117
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/MusicEnhancer_Log.txt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, file:Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 123
    .local v7, fileSize:J
    const-wide/32 v17, 0x2dc6c0

    cmp-long v17, v7, v17

    if-lez v17, :cond_1

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/FileWriter;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/musicenhancer/util/LogWriter;->mBufferWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v5           #file:Ljava/io/File;
    .end local v7           #fileSize:J
    :catch_0
    move-exception v4

    .line 133
    .local v4, ex:Ljava/lang/Exception;
    const-string v17, "[EnhancerService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception in LogWriter. Ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fileSize:J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/FileWriter;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/musicenhancer/util/LogWriter;->mBufferWriter:Ljava/io/BufferedWriter;

    goto/16 :goto_0

    .line 129
    .end local v7           #fileSize:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/FileWriter;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/musicenhancer/util/LogWriter;->mBufferWriter:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 139
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 140
    .local v2, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v9

    .line 141
    .local v9, formatter:Ljava/text/NumberFormat;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 142
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, month:Ljava/lang/String;
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, date:Ljava/lang/String;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, hour:Ljava/lang/String;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    .line 146
    .local v13, minute:Ljava/lang/String;
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    .line 147
    .local v15, second:Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 148
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, millisecond:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 152
    .local v16, time:Ljava/lang/String;
    const/4 v11, 0x0

    .line 154
    .local v11, log:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 155
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v11           #log:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 156
    .restart local v11       #log:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter;->mStringBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter;->mStringBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter;->mStringBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x1388

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    move-object/from16 v17, v0

    #calls: Lcom/htc/musicenhancer/util/LogWriter;->writeToFile()V
    invoke-static/range {v17 .. v17}, Lcom/htc/musicenhancer/util/LogWriter;->access$200(Lcom/htc/musicenhancer/util/LogWriter;)V

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
