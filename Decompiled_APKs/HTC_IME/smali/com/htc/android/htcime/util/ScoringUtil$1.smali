.class final Lcom/htc/android/htcime/util/ScoringUtil$1;
.super Ljava/lang/Thread;
.source "ScoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/ScoringUtil;->saveScoringData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/htcime/util/ScoringUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, DHAListSB:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/htc/android/htcime/util/ScoringUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/android/htcime/util/ScoringUtil;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 109
    .local v3, dataDir:Ljava/io/File;
    const-string v7, "Scoring_"

    .line 110
    .local v7, prefix:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MMdd\'.txt\'"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v6, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 117
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_0

    .line 118
    iget-object v10, p0, Lcom/htc/android/htcime/util/ScoringUtil$1;->val$context:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unable to create file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    .local v2, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    const-string v10, "DHA List = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    sget-boolean v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    if-eqz v10, :cond_2

    .line 149
    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$300()Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$200()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|@|@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/4 v10, 0x0

    sput-boolean v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    .line 155
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Total Key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Total Word = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$100()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# BS Key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# BS Word = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$000()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Total Corrected Word = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Regional Corrected Word = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Word Selected on WCL = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Average Finger D to D internal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    long-to-float v11, v11

    sget v12, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sum of D to D time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# Finger D to D = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    int-to-float v11, v11

    sget v12, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$000()I

    move-result v11

    int-to-float v11, v11

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$100()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V3 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    long-to-float v11, v11

    sget v12, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V4 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    int-to-float v11, v11

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$100()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V5 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    int-to-float v11, v11

    sget v12, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V6 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    int-to-float v11, v11

    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$100()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/4 v12, 0x2

    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F
    invoke-static {v11, v12}, Lcom/htc/android/htcime/util/ScoringUtil;->access$400(FI)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 174
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$300()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 182
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 184
    #calls: Lcom/htc/android/htcime/util/ScoringUtil;->resetScoring()V
    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->access$500()V

    .line 188
    .end local v0           #DHAListSB:Ljava/lang/StringBuilder;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v3           #dataDir:Ljava/io/File;
    .end local v5           #f:Ljava/io/File;
    .end local v6           #formatter:Ljava/text/SimpleDateFormat;
    .end local v7           #prefix:Ljava/lang/String;
    :goto_1
    return-void

    .line 121
    .restart local v0       #DHAListSB:Ljava/lang/StringBuilder;
    .restart local v3       #dataDir:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    .restart local v6       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v7       #prefix:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 123
    .local v8, str:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 124
    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, tmp:[Ljava/lang/String;
    const-string v10, "# BS Key = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    .line 126
    :cond_5
    const-string v10, "# Total Key = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    .line 127
    :cond_6
    const-string v10, "# BS Word = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/htc/android/htcime/util/ScoringUtil;->access$012(I)I

    .line 128
    :cond_7
    const-string v10, "# Total Word = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/htc/android/htcime/util/ScoringUtil;->access$112(I)I

    .line 129
    :cond_8
    const-string v10, "# Total Corrected Word = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    .line 130
    :cond_9
    const-string v10, "# Regional Corrected Word = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 131
    :cond_a
    const-string v10, "# Word Selected on WCL = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    .line 132
    :cond_b
    const-string v10, "Sum of D to D time = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-wide v10, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v10, v12

    sput-wide v10, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    .line 133
    :cond_c
    const-string v10, "# Finger D to D = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    sput v10, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    .line 134
    :cond_d
    const-string v10, "DHA List"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #DHAListSB:Ljava/lang/StringBuilder;
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0       #DHAListSB:Ljava/lang/StringBuilder;
    goto/16 :goto_2

    .line 136
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 185
    .end local v0           #DHAListSB:Ljava/lang/StringBuilder;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #dataDir:Ljava/io/File;
    .end local v5           #f:Ljava/io/File;
    .end local v6           #formatter:Ljava/text/SimpleDateFormat;
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 186
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "Scoring"

    const-string v11, "Writing Scoring log file failed, skip it."

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
