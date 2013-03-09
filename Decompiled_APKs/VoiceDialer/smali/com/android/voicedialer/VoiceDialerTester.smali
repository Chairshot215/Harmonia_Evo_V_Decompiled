.class public Lcom/android/voicedialer/VoiceDialerTester;
.super Ljava/lang/Object;
.source "VoiceDialerTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    }
.end annotation


# static fields
.field private static final REPORT_FMT:Ljava/lang/String; = "%6s %6s %6s %6s %6s %6s %6s %s"

.field private static final REPORT_HDR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VoiceDialerTester"


# instance fields
.field private final mWavDirs:[Ljava/io/File;

.field private mWavFile:I

.field private final mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 154
    const-string v0, "%6s %6s %6s %6s %6s %6s %6s %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1/1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1/N"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "M/N"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0/N"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Fail"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Error"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Total"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicedialer/VoiceDialerTester;->REPORT_HDR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 12
    .parameter "dir"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    .line 58
    const-string v9, "VoiceDialerTester"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VoiceDialerTester "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 63
    .local v7, wavDirs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 67
    .local v8, wavFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 68
    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 69
    .local v1, d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v2, v0, v5

    .line 70
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".wav"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    .end local v2           #f:Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #d:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    .line 81
    .local v3, fa:[Ljava/io/File;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    array-length v9, v3

    new-array v9, v9, [Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    iput-object v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    .line 83
    const/4 v4, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 84
    iget-object v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    new-instance v10, Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    aget-object v11, v3, v4

    invoke-direct {v10, v11}, Lcom/android/voicedialer/VoiceDialerTester$WavFile;-><init>(Ljava/io/File;)V

    aput-object v10, v9, v4

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/io/File;

    iput-object v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavDirs:[Ljava/io/File;

    .line 89
    iget-object v9, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavDirs:[Ljava/io/File;

    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method private static countString(II)Ljava/lang/String;
    .locals 2
    .parameter "count"
    .parameter "total"

    .prologue
    .line 259
    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p0, 0x64

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private reportSummary(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 18
    .parameter "label"
    .parameter "filter"

    .prologue
    .line 226
    const/4 v11, 0x0

    .line 227
    .local v11, total:I
    const/4 v3, 0x0

    .line 228
    .local v3, count11:I
    const/4 v4, 0x0

    .line 229
    .local v4, count1N:I
    const/4 v7, 0x0

    .line 230
    .local v7, countMN:I
    const/4 v2, 0x0

    .line 231
    .local v2, count0N:I
    const/4 v6, 0x0

    .line 232
    .local v6, countFail:I
    const/4 v5, 0x0

    .line 234
    .local v5, countErrors:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    .local v1, arr$:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v12, v1, v8

    .line 235
    .local v12, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    if-eqz p2, :cond_0

    iget-object v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 236
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 237
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 238
    :cond_1
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 239
    :cond_2
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 240
    :cond_3
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    if-nez v13, :cond_4

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 241
    :cond_4
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    if-nez v13, :cond_5

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    if-nez v13, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 242
    :cond_5
    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    iget v13, v12, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 234
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 246
    .end local v12           #wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    :cond_7
    const-string v13, "%6s %6s %6s %6s %6s %6s %6s %s"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v7, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v2, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v6, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v5, v11}, Lcom/android/voicedialer/VoiceDialerTester;->countString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, line:Ljava/lang/String;
    const-string v13, "VoiceDialerTester"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private reportSummaryForEachDir()V
    .locals 11

    .prologue
    .line 201
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    .local v0, arr$:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v0, v4

    .line 203
    .local v8, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    iget-object v9, v8, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v8           #wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    :cond_0
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 206
    .local v6, names:[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 208
    const-string v9, "VoiceDialerTester"

    const-string v10, "Summary of utterances by directory"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v9, "VoiceDialerTester"

    sget-object v10, Lcom/android/voicedialer/VoiceDialerTester;->REPORT_HDR:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavDirs:[Ljava/io/File;

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 211
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, dn:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, dn2:Ljava/lang/String;
    new-instance v9, Lcom/android/voicedialer/VoiceDialerTester$2;

    invoke-direct {v9, p0, v3}, Lcom/android/voicedialer/VoiceDialerTester$2;-><init>(Lcom/android/voicedialer/VoiceDialerTester;Ljava/lang/String;)V

    invoke-direct {p0, v2, v9}, Lcom/android/voicedialer/VoiceDialerTester;->reportSummary(Ljava/lang/String;Ljava/io/FileFilter;)V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #dn:Ljava/lang/String;
    .end local v3           #dn2:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private reportSummaryForEachFileName()V
    .locals 9

    .prologue
    .line 181
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    .local v0, arr$:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 183
    .local v6, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    iget-object v7, v6, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v6           #wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 186
    .local v4, names:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 188
    const-string v7, "VoiceDialerTester"

    const-string v8, "Summary of utternaces by filename"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v7, "VoiceDialerTester"

    sget-object v8, Lcom/android/voicedialer/VoiceDialerTester;->REPORT_HDR:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 191
    .local v1, fn:Ljava/lang/String;
    new-instance v7, Lcom/android/voicedialer/VoiceDialerTester$1;

    invoke-direct {v7, p0, v1}, Lcom/android/voicedialer/VoiceDialerTester$1;-><init>(Lcom/android/voicedialer/VoiceDialerTester;Ljava/lang/String;)V

    invoke-direct {p0, v1, v7}, Lcom/android/voicedialer/VoiceDialerTester;->reportSummary(Ljava/lang/String;Ljava/io/FileFilter;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v1           #fn:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getWavFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    iget v1, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, -0x1

    .line 100
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    iget v2, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    aget-object v0, v1, v2

    .line 101
    .local v0, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    iput v3, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    .line 102
    iput v3, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    .line 103
    iput-object p1, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    iget v2, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    aget-object v0, v1, v2

    .line 112
    .local v0, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    iput v3, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    .line 113
    iput v3, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    .line 114
    iput-object p1, v0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 7
    .parameter "intents"

    .prologue
    .line 122
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    iget v5, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    aget-object v3, v4, v5

    .line 123
    .local v3, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    array-length v4, p1

    iput v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    .line 124
    iget-object v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, utter:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 127
    aget-object v4, p1, v0

    const-string v5, "sentence"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, sentence:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    iput-object v1, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    .line 133
    array-length v4, p1

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", etc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    .line 136
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    add-int/lit8 v4, v0, 0x1

    iput v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    .line 138
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    .line 142
    .end local v1           #sentence:Ljava/lang/String;
    :cond_1
    return-void

    .line 126
    .restart local v1       #sentence:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public report()V
    .locals 8

    .prologue
    .line 162
    const-string v4, "VoiceDialerTester"

    const-string v5, "List of all utterances tested"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    .local v0, arr$:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 164
    .local v3, wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    const-string v5, "VoiceDialerTester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mRank:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mTotal:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v3, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 169
    .end local v3           #wf:Lcom/android/voicedialer/VoiceDialerTester$WavFile;
    :cond_1
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerTester;->reportSummaryForEachFileName()V

    .line 172
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerTester;->reportSummaryForEachDir()V

    .line 175
    const-string v4, "VoiceDialerTester"

    const-string v5, "Summary of all utterances"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "VoiceDialerTester"

    sget-object v5, Lcom/android/voicedialer/VoiceDialerTester;->REPORT_HDR:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v4, "Total"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/voicedialer/VoiceDialerTester;->reportSummary(Ljava/lang/String;Ljava/io/FileFilter;)V

    .line 178
    return-void
.end method

.method public stepToNextTest()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    .line 150
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFile:I

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerTester;->mWavFiles:[Lcom/android/voicedialer/VoiceDialerTester$WavFile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
