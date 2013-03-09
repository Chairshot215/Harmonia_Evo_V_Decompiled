.class public Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;
.super Landroid/app/Activity;
.source "First_Auto_Comp_Word_Test.java"


# static fields
.field public static final CONTENT_TEXT_VARIATION_HTC_TOOL_1st_AUTO_COMP_WORD_TEST:I = 0x9c0


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private errorWords:Ljava/lang/StringBuilder;

.field private errorWordsCount:I

.field private final mGoogleWordLocation:Ljava/lang/String;

.field private mInstance:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

.field private mPauseTime:I

.field mProgress:Landroid/app/ProgressDialog;

.field private final mResultLocation:Ljava/lang/String;

.field private mStartBtn:Landroid/widget/Button;

.field private mTestFinishReceiver:Landroid/content/BroadcastReceiver;

.field private mTextBox:Landroid/widget/EditText;

.field private mTimeOuttBtn:Landroid/widget/Button;

.field private mWclLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, "First_Auto_Comp_Word_Test"

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->DEBUG:Z

    .line 43
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mStartBtn:Landroid/widget/Button;

    .line 44
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;

    .line 45
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HTC_IME_Test/google8000.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mGoogleWordLocation:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HTC_IME_Test/parsed_result.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mResultLocation:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    .line 51
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    .line 52
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mInstance:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    .line 53
    iput-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mProgress:Landroid/app/ProgressDialog;

    .line 54
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mGoogleWordLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->promptForPauseTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mInstance:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->doAnalyzeLog()V

    return-void
.end method

.method private doAnalyzeLog()V
    .locals 6

    .prologue
    .line 165
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    .line 168
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, wcl_file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***Log file not exist, Log file=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .end local v2           #wcl_file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v2       #wcl_file:Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mGoogleWordLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .local v0, googleReader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mWclLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 177
    .local v1, wclReader:Ljava/io/BufferedReader;
    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->parse(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 180
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #googleReader:Ljava/io/BufferedReader;
    .end local v1           #wclReader:Ljava/io/BufferedReader;
    .end local v2           #wcl_file:Ljava/io/File;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error word count:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\nLog:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mResultLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private parse(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)V
    .locals 14
    .parameter "google_br"
    .parameter "wcl_br"

    .prologue
    .line 191
    const/4 v8, 0x0

    .line 192
    .local v8, typedWord:Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, _1st_AC_Word:Ljava/lang/String;
    const/4 v9, 0x0

    .line 196
    .local v9, wantedWord:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    iget-object v12, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mResultLocation:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 197
    .local v6, resultWriter:Ljava/io/BufferedWriter;
    const-string v11, "Word_Want"

    const-string v12, "Word_Typed"

    const-string v13, "Auto_Comp"

    invoke-virtual {p0, v6, v11, v12, v13}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->record(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0           #_1st_AC_Word:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 201
    .local v0, _1st_AC_Word:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, wcl:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v10, :cond_2

    .line 252
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 256
    .end local v0           #_1st_AC_Word:Ljava/lang/Object;
    .end local v6           #resultWriter:Ljava/io/BufferedWriter;
    .end local v10           #wcl:Ljava/lang/String;
    :goto_1
    return-void

    .line 207
    .restart local v0       #_1st_AC_Word:Ljava/lang/Object;
    .restart local v6       #resultWriter:Ljava/io/BufferedWriter;
    .restart local v10       #wcl:Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 211
    const-string v11, "\'"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 213
    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 215
    const-string v11, "s.o.b."

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 218
    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 219
    move-object v8, v10

    .line 244
    .end local v0           #_1st_AC_Word:Ljava/lang/Object;
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 245
    :cond_4
    invoke-virtual {p0, v6, v9, v8, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->record(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v11, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    .line 247
    iget-object v11, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "word "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWordsCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v11, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v11, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->errorWords:Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 253
    .end local v6           #resultWriter:Ljava/io/BufferedWriter;
    .end local v10           #wcl:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 254
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #_1st_AC_Word:Ljava/lang/Object;
    .restart local v6       #resultWriter:Ljava/io/BufferedWriter;
    .restart local v10       #wcl:Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v11, "|"

    invoke-direct {v7, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v7, st:Ljava/util/StringTokenizer;
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 223
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, curToken:Ljava/lang/String;
    if-nez v8, :cond_7

    .line 225
    move-object v8, v1

    goto :goto_3

    .line 227
    :cond_7
    const-string v11, "<"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 230
    const-string v11, "<"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 231
    .local v4, idx1:I
    const-string v11, ">"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 232
    .local v5, idx2:I
    sub-int v2, v5, v4

    .line 234
    .local v2, dif:I
    const/4 v11, 0x1

    if-lt v2, v11, :cond_6

    .line 235
    const/4 v11, 0x0

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, _1st_AC_Word:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 237
    goto/16 :goto_2
.end method

.method private promptForPauseTime()V
    .locals 7

    .prologue
    .line 111
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 112
    .local v2, input:Landroid/widget/EditText;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Pause time between words"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Default: 500 ms"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Ok"

    new-instance v6, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;

    invoke-direct {v6, p0, v2}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;-><init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$3;

    invoke-direct {v6, p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$3;-><init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 133
    .local v1, dialogWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 134
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v4, v4, 0x4

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 135
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    return-void
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTestFinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "1st_AUTO_COMP_TEST_FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$5;-><init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    iput-object v1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTestFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTestFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTestFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected editTextSetup()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mProgress:Landroid/app/ProgressDialog;

    .line 77
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->setContentView(I)V

    .line 79
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mStartBtn:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mStartBtn:Landroid/widget/Button;

    const-string v1, "Start Test"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mStartBtn:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;-><init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$2;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$2;-><init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTextBox:Landroid/widget/EditText;

    const v1, 0x209c1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->receiverRegister()V

    .line 60
    iput-object p0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mInstance:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->receiverUnRegister()V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->editTextSetup()V

    .line 67
    return-void
.end method

.method public record(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resultWriter"
    .parameter "w"
    .parameter "t"
    .parameter "_1"

    .prologue
    .line 260
    if-nez p4, :cond_0

    .line 261
    :try_start_0
    const-string p4, "****NO_1st_Auto_Comp_word****"

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method
