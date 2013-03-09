.class public Lcom/htc/android/htcime/util/BackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupAgent.java"


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_VERBOSE:I = 0x1

.field private static final HTC_BACKUP_RESTORE_PREFIX:Ljava/lang/String; = "htcDevice_"

.field private static final KEY_ALPHA_UDB:Ljava/lang/String; = "htcDevice_ALPHA_UDB"

.field private static final STATE_ALPHA_UDB:I = 0x0

.field private static final STATE_SIZE:I = 0x1

.field private static sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static convertByteArrayToCharArray([B)[C
    .locals 2
    .parameter "ba"

    .prologue
    .line 204
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 205
    .local v0, ca:[C
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 206
    return-object v0
.end method

.method public static convertCharArrayToByteArray([CI)[B
    .locals 3
    .parameter "ca"
    .parameter "caLen"

    .prologue
    .line 198
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [B

    .line 199
    .local v0, ba:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 200
    return-object v0
.end method

.method private getAlphaUDB_XT9()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 145
    sget-object v7, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getWordCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x40

    add-int/lit8 v7, v7, -0x1

    new-array v4, v7, [C

    .line 146
    .local v4, udbData:[C
    sget-object v7, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v7, v4}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getWordAll([C)I

    move-result v5

    .line 148
    .local v5, udbDataSize:I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v9, v5}, Ljava/lang/String;-><init>([CII)V

    .line 152
    .local v6, wordList:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/htcime/util/UDBTools;->parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;

    move-result-object v0

    .line 153
    .local v0, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 154
    .local v3, strbuff:Ljava/lang/StringBuffer;
    new-instance v2, Lcom/htc/android/htcime/util/UDBTools$StringCmp;

    invoke-direct {v2}, Lcom/htc/android/htcime/util/UDBTools$StringCmp;-><init>()V

    .line 155
    .local v2, stcmp:Lcom/htc/android/htcime/util/UDBTools$StringCmp;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_1

    .line 156
    sget-object v7, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    aget-object v8, v0, v1

    iget-object v8, v8, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-gez v7, :cond_0

    .line 157
    aget-object v7, v0, v1

    iget-object v7, v7, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 163
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 164
    invoke-virtual {v3, v9, v5, v4, v9}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 166
    invoke-static {v4, v5}, Lcom/htc/android/htcime/util/BackupAgent;->convertCharArrayToByteArray([CI)[B

    move-result-object v7

    return-object v7
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 102
    new-array v3, v6, [J

    .line 104
    .local v3, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v0, dataInput:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 114
    return-object v3
.end method

.method private restoreAlphaUDB_XT9(Landroid/app/backup/BackupDataInput;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v5

    new-array v0, v5, [B

    .line 173
    .local v0, byte_buff:[B
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-virtual {p1, v0, v5, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/htcime/util/BackupAgent;->convertByteArrayToCharArray([B)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 182
    .local v4, wordList:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/util/UDBTools;->parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;

    move-result-object v1

    .line 184
    .local v1, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    iget-object v5, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    const-string v6, "[restoreAlphaUDB_XT9] Restore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 187
    sget-object v5, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    aget-object v6, v1, v2

    iget-object v6, v6, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-object v7, v1, v2

    iget-object v7, v7, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 189
    iget-object v5, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    iget-object v7, v7, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v1           #entries:[Lcom/htc/android/htcime/util/UDBEntry;
    .end local v2           #i:I
    .end local v4           #wordList:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 175
    .local v3, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t read data:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v3           #ioe:Ljava/io/IOException;
    :goto_1
    return-void

    .line 192
    .restart local v1       #entries:[Lcom/htc/android/htcime/util/UDBEntry;
    .restart local v2       #i:I
    .restart local v4       #wordList:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    const-string v6, "[restoreAlphaUDB_XT9] Done."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 129
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 130
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 131
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 132
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 141
    .end local p1
    :goto_0
    return-wide p1

    .line 136
    .restart local p1
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 137
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 141
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 122
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 125
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    const-string v1, "[onBackup]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcime/util/BackupAgent;->getAlphaUDB_XT9()[B

    move-result-object v4

    .line 73
    .local v4, alphaUDBData:[B
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/BackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v6

    .line 75
    .local v6, stateChecksums:[J
    aget-wide v1, v6, v7

    const-string v3, "htcDevice_ALPHA_UDB"

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcime/util/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 79
    invoke-direct {p0, v6, p3}, Lcom/htc/android/htcime/util/BackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    const-string v1, "[onBackup] done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 62
    sget-object v0, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p0}, Lcom/htc/android/htcime/util/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/htcime/util/BackupAgent;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 64
    :cond_0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    const-string v2, "[onRestore]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, key:Ljava/lang/String;
    const-string v1, "htcDevice_ALPHA_UDB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/android/htcime/util/BackupAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is found, restore data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/BackupAgent;->restoreAlphaUDB_XT9(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 99
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method
