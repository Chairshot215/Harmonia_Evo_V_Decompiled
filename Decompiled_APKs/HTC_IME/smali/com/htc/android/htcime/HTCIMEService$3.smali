.class Lcom/htc/android/htcime/HTCIMEService$3;
.super Ljava/lang/Thread;
.source "HTCIMEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/HTCIMEService;->finishSIPrecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter

    .prologue
    .line 3821
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 3823
    :try_start_0
    const-string v14, "chwu"

    const-string v15, "sleep 300"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    const-wide/16 v14, 0x12c

    invoke-static {v14, v15}, Lcom/htc/android/htcime/HTCIMEService$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3829
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v14

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 3830
    .local v11, len:I
    const/4 v10, 0x1

    .line 3831
    .local v10, isTyped:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v14

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 3833
    .local v12, lines:[Ljava/lang/String;
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v12, v14

    const-string v15, "S"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "chwu"

    const-string v15, "only start input"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    const/4 v10, 0x0

    .line 3835
    :cond_0
    if-lez v11, :cond_6

    if-eqz v10, :cond_6

    const-string v14, "chwu"

    const-string v15, "in record"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    :try_start_1
    const-string v14, "ro.build.description"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3838
    .local v3, devInfo:Ljava/lang/String;
    const/16 v14, 0x9

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "#|\\)|\\("

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, "_"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3839
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IME_Test"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3843
    .local v2, dataDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3844
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 3848
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v14, :cond_7

    const-string v13, "STPR_"

    .line 3849
    .local v13, prefix:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MMdd\'.ime\'"

    invoke-direct {v7, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3850
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3851
    .local v5, f:Ljava/io/File;
    const/4 v9, 0x0

    .line 3852
    .local v9, isNewCreate:Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 3853
    const/4 v9, 0x1

    .line 3854
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_2

    .line 3855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unable to create file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 3858
    :cond_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/FileWriter;

    const/4 v15, 0x1

    invoke-direct {v14, v5, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3860
    .local v1, bw:Ljava/io/BufferedWriter;
    if-eqz v9, :cond_4

    .line 3862
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "safeTopY,safeBottomY,safeLeftX,safeRightX,backspaceX,backspaceY\ndevInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\nType,\tKeyVal,\tTouchX,\tTouchY,\tTimestamp\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3864
    .local v8, header:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v14, :cond_3

    .line 3865
    sget-object v14, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->SHARED_SECRET:Ljava/lang/String;

    invoke-static {v14, v8}, Lcom/htc/android/htcime/tools/SipReportUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3866
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3869
    .end local v8           #header:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v14

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3870
    .local v6, finalReport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v14, :cond_5

    .line 3871
    sget-object v14, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->SHARED_SECRET:Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/htc/android/htcime/tools/SipReportUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3873
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3874
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3875
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3876
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-nez v14, :cond_6

    .line 3877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SIP usage report saved path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3882
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v2           #dataDir:Ljava/io/File;
    .end local v3           #devInfo:Ljava/lang/String;
    .end local v5           #f:Ljava/io/File;
    .end local v6           #finalReport:Ljava/lang/String;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    .end local v9           #isNewCreate:Z
    .end local v13           #prefix:Ljava/lang/String;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v14}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v14

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService$3;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3883
    return-void

    .line 3825
    .end local v10           #isTyped:Z
    .end local v11           #len:I
    .end local v12           #lines:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3826
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "HTCIMEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3848
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #dataDir:Ljava/io/File;
    .restart local v3       #devInfo:Ljava/lang/String;
    .restart local v10       #isTyped:Z
    .restart local v11       #len:I
    .restart local v12       #lines:[Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v13, "SIP_recorder_"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 3878
    .end local v2           #dataDir:Ljava/io/File;
    .end local v3           #devInfo:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 3879
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v14, "HTCIMEService"

    const-string v15, "Writing SIP log file failed, skip it."

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
