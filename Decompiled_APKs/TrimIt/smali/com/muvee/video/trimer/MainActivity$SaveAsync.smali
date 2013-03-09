.class Lcom/muvee/video/trimer/MainActivity$SaveAsync;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAvailableSize:J

.field private mFileSize:J

.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 1056
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1058
    iput-wide v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mAvailableSize:J

    .line 1059
    iput-wide v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mFileSize:J

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .parameter "params"

    .prologue
    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$9(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1066
    const/4 v1, 0x0

    .line 1145
    :goto_0
    return-object v1

    .line 1069
    :cond_0
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::doInBackground:mVideoFile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mSpaceCheckFlag:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$11(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Boolean;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mSpaceExceeded:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$12(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Boolean;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/16 v2, 0xa

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$9(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$13(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 1078
    const/4 v1, 0x0

    goto :goto_0

    .line 1081
    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mFileSize:J

    .line 1084
    sget-object v1, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/muvee/video/trimer/ThumbInterface;->IsTrimPaused(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1085
    .local v16, temp_path:Ljava/lang/String;
    if-nez v16, :cond_4

    .line 1087
    const-string v1, "com.muvee.video.trimer.MainActivity"

    const-string v2, "doInBackground output path is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1089
    .local v10, fileName:Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1090
    .local v8, extension:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v10, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1092
    .local v14, name:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;-><init>(Lcom/muvee/video/trimer/MainActivity$SaveAsync;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v15

    .line 1100
    .local v15, strings:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1101
    .local v11, i:I
    if-eqz v15, :cond_2

    .line 1102
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1104
    .local v7, asList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1103
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1111
    .end local v7           #asList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$13(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 1112
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground output path : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$14(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v8           #extension:Ljava/lang/String;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #strings:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$15(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/muvee/video/trimer/MVideoTrimer;

    .line 1122
    invoke-virtual {v1}, Lcom/muvee/video/trimer/MVideoTrimer;->getSeqments()[Lcom/muvee/video/trimer/Seqment;

    move-result-object v13

    .line 1123
    .local v13, mSegments:[Lcom/muvee/video/trimer/Seqment;
    array-length v1, v13

    new-array v5, v1, [I

    .line 1124
    .local v5, startTimes:[I
    array-length v1, v13

    new-array v6, v1, [I

    .line 1125
    .local v6, endTimes:[I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    array-length v1, v13

    if-lt v12, v1, :cond_5

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mFileSize:J

    long-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v4, 0x0

    aget v4, v5, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/video/trimer/view/TrimBar;->getVideoDuration()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-long v2, v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J
    invoke-static {v1, v2, v3}, Lcom/muvee/video/trimer/MainActivity;->access$17(Lcom/muvee/video/trimer/MainActivity;J)V

    .line 1135
    invoke-static {}, Lcom/muvee/video/trimer/util/TrimmerUtil;->getAvailableSize()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mAvailableSize:J

    .line 1137
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Estimate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$18(Lcom/muvee/video/trimer/MainActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Available (before): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mAvailableSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->mAvailableSize:J

    const-wide/16 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J
    invoke-static/range {v17 .. v17}, Lcom/muvee/video/trimer/MainActivity;->access$18(Lcom/muvee/video/trimer/MainActivity;)J

    move-result-wide v17

    mul-long v3, v3, v17

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 1140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mSpaceCheckFlag:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$11(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Boolean;)V

    .line 1142
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    move-object/from16 v17, v0

    sget-object v1, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$14(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    array-length v4, v13

    .line 1142
    invoke-virtual/range {v1 .. v6}, Lcom/muvee/video/trimer/ThumbInterface;->invokeTrimSave(Ljava/lang/String;Ljava/lang/String;I[I[I)I

    move-result v1

    move-object/from16 v0, v17

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$9(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1145
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1115
    .end local v5           #startTimes:[I
    .end local v6           #endTimes:[I
    .end local v12           #j:I
    .end local v13           #mSegments:[Lcom/muvee/video/trimer/Seqment;
    :cond_4
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground output path : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$13(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 1117
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1126
    .restart local v5       #startTimes:[I
    .restart local v6       #endTimes:[I
    .restart local v12       #j:I
    .restart local v13       #mSegments:[Lcom/muvee/video/trimer/Seqment;
    :cond_5
    aget-object v1, v13, v12

    invoke-virtual {v1}, Lcom/muvee/video/trimer/Seqment;->getStartTime()F

    move-result v1

    float-to-int v1, v1

    aput v1, v5, v12

    .line 1127
    aget-object v1, v13, v12

    invoke-virtual {v1}, Lcom/muvee/video/trimer/Seqment;->getEndTime()F

    move-result v1

    float-to-int v1, v1

    aput v1, v6, v12

    .line 1128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$16(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v2

    aget v3, v6, v12

    aget v4, v5, v12

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$15(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1125
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3039

    .line 1150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1151
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "onPostExecute called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1154
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1155
    const/16 v1, 0x80

    .line 1154
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1157
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1161
    :cond_0
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onPostExecute:mResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1187
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saving failed. = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x2

    #calls: Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$24(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1189
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V
    invoke-static {v0, v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$25(Lcom/muvee/video/trimer/MainActivity;IZ)V

    .line 1192
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 1165
    :sswitch_1
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$21(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$22(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1167
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;
    invoke-static {v0, v4}, Lcom/muvee/video/trimer/MainActivity;->access$23(Lcom/muvee/video/trimer/MainActivity;Landroid/app/Notification;)V

    .line 1170
    :cond_2
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trimming completed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$14(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file-size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$18(Lcom/muvee/video/trimer/MainActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/muvee/video/trimer/MainActivity;->access$14(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1172
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x0

    #calls: Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$24(Lcom/muvee/video/trimer/MainActivity;I)V

    goto :goto_0

    .line 1177
    :sswitch_2
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$21(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$22(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1179
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;
    invoke-static {v0, v4}, Lcom/muvee/video/trimer/MainActivity;->access$23(Lcom/muvee/video/trimer/MainActivity;Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method
