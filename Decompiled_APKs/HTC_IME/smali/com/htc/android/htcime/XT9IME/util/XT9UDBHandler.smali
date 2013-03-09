.class public Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;
.super Ljava/lang/Object;
.source "XT9UDBHandler.java"


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final DefTimeStamp:J = 0x2710L

.field public static final TimeStampKey:Ljava/lang/String; = "ALPHABET_UDB_TimeStamp"

.field public static final URI_UDB_CHANGE:Landroid/net/Uri;

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field final DEBUG:Z

.field final TAG:Ljava/lang/String;

.field protected mAPPContext:Landroid/content/Context;

.field private mSharePref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "alphabet_udb_words"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->URI_UDB_CHANGE:Landroid/net/Uri;

    .line 55
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 237
    :try_start_0
    const-string v1, "t9"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 238
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 240
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: UDBHandler could not load libt9.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->DEBUG:Z

    .line 53
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    .line 54
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mSharePref:Landroid/content/SharedPreferences;

    .line 60
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    .line 61
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeInitial(Landroid/content/res/AssetManager;)I

    .line 63
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mSharePref:Landroid/content/SharedPreferences;

    .line 65
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Landroid/app/backup/BackupManager;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 69
    :cond_0
    const/4 v1, 0x1

    .line 70
    .local v1, doNotRun:Z
    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->dummyRunForFroyo()V

    .line 72
    :cond_1
    return-void
.end method

.method public static isValidWord([C)Z
    .locals 4
    .parameter "word"

    .prologue
    .line 203
    const/4 v2, 0x1

    .line 204
    .local v2, noLetterInTarget:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 206
    aget-char v3, p0, v0

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v2, 0x0

    .line 213
    :cond_0
    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 215
    .local v1, isValidWord:Z
    :goto_1
    return v1

    .line 204
    .end local v1           #isValidWord:Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeInitial(Landroid/content/res/AssetManager;)I
.end method

.method private static native nativeUDBAddWord([CI)I
.end method

.method private static native nativeUDBAddWordByIdx(I)V
.end method

.method private static native nativeUDBDelWord([C)I
.end method

.method private static native nativeUDBGetWordAll([C)I
.end method

.method private static native nativeUDBGetWordCount()I
.end method

.method private static native nativeUDBReload()V
.end method


# virtual methods
.method public addWord([CI)I
    .locals 4
    .parameter "word"
    .parameter "length"

    .prologue
    .line 76
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->isValidWord([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addWord] Word is not valid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v0, 0x100001

    .line 90
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-static {p1, p2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBAddWord([CI)I

    move-result v0

    .line 83
    .local v0, status:I
    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->updateTimeStamp()V

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->URI_UDB_CHANGE:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 86
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addWord] Error, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addWords(Ljava/lang/String;)V
    .locals 5
    .parameter "wordList"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/htc/android/htcime/util/UDBTools;->parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;

    move-result-object v0

    .line 165
    .local v0, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "[addWords] Restore..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 168
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 170
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "[addWords] Done."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delWord([C)I
    .locals 4
    .parameter "word"

    .prologue
    .line 95
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBDelWord([C)I

    move-result v0

    .line 97
    .local v0, status:I
    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->updateTimeStamp()V

    .line 99
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->URI_UDB_CHANGE:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 100
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[delWord] Error, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dummyRunForFroyo()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBAddWordByIdx(I)V

    .line 246
    return-void
.end method

.method public getTimeStamp()J
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "ALPHABET_UDB_TimeStamp"

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWordAll([C)I
    .locals 1
    .parameter "buff"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBGetWordAll([C)I

    move-result v0

    return v0
.end method

.method public getWordAll()Ljava/lang/String;
    .locals 9

    .prologue
    .line 130
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBGetWordCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x40

    add-int/lit8 v7, v7, -0x1

    new-array v4, v7, [C

    .line 131
    .local v4, udbData:[C
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBGetWordAll([C)I

    move-result v5

    .line 133
    .local v5, udbDataSize:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    .line 137
    .local v6, wordList:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/htcime/util/UDBTools;->parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;

    move-result-object v0

    .line 138
    .local v0, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    .local v3, strbuff:Ljava/lang/StringBuffer;
    new-instance v2, Lcom/htc/android/htcime/util/UDBTools$StringCmp;

    invoke-direct {v2}, Lcom/htc/android/htcime/util/UDBTools$StringCmp;-><init>()V

    .line 140
    .local v2, stcmp:Lcom/htc/android/htcime/util/UDBTools$StringCmp;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_1

    .line 141
    sget-object v7, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    aget-object v8, v0, v1

    iget-object v8, v8, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-gez v7, :cond_0

    .line 142
    aget-object v7, v0, v1

    iget-object v7, v7, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getWordCount()I
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->nativeUDBGetWordCount()I

    move-result v0

    return v0
.end method

.method public mdfWord([C[C)I
    .locals 3
    .parameter "orgWord"
    .parameter "newWord"

    .prologue
    .line 110
    array-length v2, p2

    invoke-virtual {p0, p2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    move-result v0

    .line 112
    .local v0, status:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 120
    .end local v0           #status:I
    .local v1, status:I
    :goto_0
    return v1

    .line 115
    .end local v1           #status:I
    .restart local v0       #status:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->delWord([C)I

    move-result v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->delWord([C)I

    :cond_1
    move v1, v0

    .line 120
    .end local v0           #status:I
    .restart local v1       #status:I
    goto :goto_0
.end method

.method public updateTimeStamp()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mAPPContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/plugin/util/CSUtils;->getServerTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 180
    .local v0, timestampCS:J
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ALPHABET_UDB_TimeStamp"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method
