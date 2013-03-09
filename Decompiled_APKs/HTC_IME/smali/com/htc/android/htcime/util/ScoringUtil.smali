.class public Lcom/htc/android/htcime/util/ScoringUtil;
.super Ljava/lang/Object;
.source "ScoringUtil.java"


# static fields
.field private static final AvgTimeDtoD:Ljava/lang/String; = "Average Finger D to D internal = "

.field private static final BSKey:Ljava/lang/String; = "# BS Key = "

.field private static final BSWord:Ljava/lang/String; = "# BS Word = "

.field private static final DEBUG:Z = false

.field public static final DHATitle:Ljava/lang/String; = "DHA List"

.field public static final ITEM_KEY_DHA_LIST:I = 0x7

.field public static final ITEM_KEY_V1:I = 0x1

.field public static final ITEM_KEY_V2:I = 0x2

.field public static final ITEM_KEY_V3:I = 0x3

.field public static final ITEM_KEY_V4:I = 0x4

.field public static final ITEM_KEY_V5:I = 0x5

.field public static final ITEM_KEY_V6:I = 0x6

.field public static final ITEM_NO_KEY:I = 0x0

.field private static final NumTimeDtoD:Ljava/lang/String; = "# Finger D to D = "

.field private static final RegCorrectedWord:Ljava/lang/String; = "# Regional Corrected Word = "

.field private static final SumTimeDtoD:Ljava/lang/String; = "Sum of D to D time = "

.field private static final TAG:Ljava/lang/String; = "Scoring"

.field private static final TotalCorrectedWord:Ljava/lang/String; = "# Total Corrected Word = "

.field private static final TotalKey:Ljava/lang/String; = "# Total Key = "

.field private static final TotalWord:Ljava/lang/String; = "# Total Word = "

.field private static final WordOnWCL:Ljava/lang/String; = "# Word Selected on WCL = "

.field private static mDHAListSB:Ljava/lang/StringBuilder; = null

.field private static mDHANotifyStrSB:Ljava/lang/StringBuilder; = null

.field public static final mDHASpliter:Ljava/lang/String; = "|@|@"

.field public static mIsToCharDHA:Z = false

.field public static mIsToCommitDHA:Z = false

.field public static mIsWordWithBS:Z = false

.field public static mNeedToSaveNextWord:Z = false

.field public static mNumBSKey:I = 0x0

.field private static mNumBSWords:I = 0x0

.field public static mNumDtoD:I = 0x0

.field public static mNumRegCorrectedWords:I = 0x0

.field public static mNumTotalCorrectedWords:I = 0x0

.field public static mNumTotalKey:I = 0x0

.field private static mNumTotalWords:I = 0x0

.field public static mNumWordsOnWCL:I = 0x0

.field private static mPrevCommitWord:Ljava/lang/String; = null

.field public static final mSpliter:Ljava/lang/String; = " = "

.field public static mSumDtoD:J

.field public static mToCharDHA:Z

.field public static mToCommitDHA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    .line 40
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    .line 41
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    .line 42
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    .line 43
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    .line 44
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 45
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    .line 46
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    .line 48
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mIsWordWithBS:Z

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mPrevCommitWord:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    .line 51
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mIsToCommitDHA:Z

    .line 52
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mIsToCharDHA:Z

    .line 53
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mToCommitDHA:Z

    .line 54
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    .line 55
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    return v0
.end method

.method static synthetic access$012(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    add-int/2addr v0, p0

    sput v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    return v0
.end method

.method static synthetic access$112(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    add-int/2addr v0, p0

    sput v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mPrevCommitWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(FI)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/htc/android/htcime/util/ScoringUtil;->round(FI)F

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/android/htcime/util/ScoringUtil;->resetScoring()V

    return-void
.end method

.method public static addRegExpSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "rawStr"

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 334
    const-string v2, "]["

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v0, v0, 0x2

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v2, 0x0

    const-string v3, "["

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "]"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static appendDHANotifyStr(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 325
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static convertRawDataToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "rawStr"

    .prologue
    const/4 v8, 0x1

    .line 199
    move-object v2, p0

    .line 201
    .local v2, retStr:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Sum of D to D time = "

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "# Finger D to D = "

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    :cond_0
    const/4 v2, 0x0

    .line 237
    :cond_1
    :goto_0
    return-object v2

    .line 205
    :cond_2
    const-string v6, "Average Finger D to D internal = "

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 207
    :cond_3
    const-string v6, "DHA List"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 208
    const-string v2, "DHA List"

    goto :goto_0

    .line 209
    :cond_4
    const-string v6, "V"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    invoke-static {p0}, Lcom/htc/android/htcime/util/ScoringUtil;->getItemKey(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, item_key:I
    const-string v6, " = "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, tmp:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, db:Ljava/lang/StringBuilder;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 215
    const-string v4, "%"

    .line 216
    .local v4, suffix:Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, score:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    packed-switch v1, :pswitch_data_0

    .line 231
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v3           #score:Ljava/lang/String;
    .end local v4           #suffix:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 221
    .restart local v3       #score:Ljava/lang/String;
    .restart local v4       #suffix:Ljava/lang/String;
    :pswitch_0
    const-string v6, "(Ave. Typing Interval) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, " ms"

    .line 223
    aget-object v3, v5, v8

    .line 224
    goto :goto_1

    .line 225
    :pswitch_1
    const-string v6, "(BS Key Rate) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 226
    :pswitch_2
    const-string v6, "(BS Word Rate) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 227
    :pswitch_3
    const-string v6, "(Total Correction Rate) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    :pswitch_4
    const-string v6, "(Regional Correction Rate) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    :pswitch_5
    const-string v6, "(WCL Selection Rate) = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .parameter "context"

    .prologue
    .line 305
    const-string v2, "ro.product.name"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, device_name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME_Test"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Scoring_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 321
    :cond_1
    return-object v0
.end method

.method public static getItemKey(Ljava/lang/String;)I
    .locals 1
    .parameter "rawStr"

    .prologue
    .line 241
    const-string v0, "V1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    .line 242
    :cond_0
    const-string v0, "V2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "V3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 244
    :cond_2
    const-string v0, "V4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 245
    :cond_3
    const-string v0, "V5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 246
    :cond_4
    const-string v0, "V6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 247
    :cond_5
    const-string v0, "DHA List"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 248
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getItemKeyStr(I)Ljava/lang/String;
    .locals 1
    .parameter "item_key"

    .prologue
    .line 252
    packed-switch p0, :pswitch_data_0

    .line 260
    const-string v0, ""

    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    const-string v0, "V1"

    goto :goto_0

    .line 254
    :pswitch_1
    const-string v0, "V2"

    goto :goto_0

    .line 255
    :pswitch_2
    const-string v0, "V3"

    goto :goto_0

    .line 256
    :pswitch_3
    const-string v0, "V4"

    goto :goto_0

    .line 257
    :pswitch_4
    const-string v0, "V5"

    goto :goto_0

    .line 258
    :pswitch_5
    const-string v0, "V6"

    goto :goto_0

    .line 259
    :pswitch_6
    const-string v0, "DHA List"

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static resetScoring()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    .line 83
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    .line 84
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    .line 85
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    .line 86
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    .line 87
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 88
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    .line 89
    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    .line 91
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 92
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 93
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mIsWordWithBS:Z

    .line 94
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mPrevCommitWord:Ljava/lang/String;

    .line 96
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mToCommitDHA:Z

    .line 97
    sput-boolean v2, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    .line 98
    return-void
.end method

.method private static round(FI)F
    .locals 5
    .parameter "f"
    .parameter "bit"

    .prologue
    .line 194
    const-wide/high16 v1, 0x4024

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-float v0, v1

    .line 195
    .local v0, p:F
    mul-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static saveScoringData(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    new-instance v0, Lcom/htc/android/htcime/util/ScoringUtil$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/ScoringUtil$1;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method public static submitWord(ILjava/lang/String;)V
    .locals 4
    .parameter "sel_idx"
    .parameter "cand"

    .prologue
    const/4 v3, 0x0

    .line 265
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalWords:I

    .line 267
    sget-boolean v0, Lcom/htc/android/htcime/util/ScoringUtil;->mIsWordWithBS:Z

    if-eqz v0, :cond_0

    .line 268
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSWords:I

    .line 270
    :cond_0
    sput-boolean v3, Lcom/htc/android/htcime/util/ScoringUtil;->mIsWordWithBS:Z

    .line 272
    if-lez p0, :cond_1

    .line 273
    sget v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalCorrectedWords:I

    .line 275
    :cond_1
    sget-boolean v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    if-eqz v0, :cond_2

    .line 276
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/android/htcime/util/ScoringUtil;->mPrevCommitWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|@|@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sput-boolean v3, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    .line 284
    :cond_2
    sget-boolean v0, Lcom/htc/android/htcime/util/ScoringUtil;->mToCommitDHA:Z

    if-eqz v0, :cond_3

    .line 285
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/util/ScoringUtil;->mNeedToSaveNextWord:Z

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mPrevCommitWord:Ljava/lang/String;

    .line 287
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 290
    :cond_3
    sget-boolean v0, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    if-eqz v0, :cond_4

    .line 291
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHAListSB:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|@|@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    sget-object v0, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/android/htcime/util/ScoringUtil;->mDHANotifyStrSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 300
    :cond_4
    sput-boolean v3, Lcom/htc/android/htcime/util/ScoringUtil;->mToCommitDHA:Z

    .line 301
    sput-boolean v3, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    .line 302
    return-void
.end method
