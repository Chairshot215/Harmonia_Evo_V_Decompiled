.class public Lcom/htc/android/htcime/util/ContactsDBGenerator;
.super Ljava/lang/Object;
.source "ContactsDBGenerator.java"


# static fields
.field private static final MDB_UPDATE_TIMER:I = 0x36ee80

.field protected static final MSG_UPDATE_DB:I = 0x1

.field protected static final MSG_UPDATE_DB_POST:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private ASSET_FOLDER:Ljava/lang/String;

.field private final DB_BUFFER:I

.field private DEBUG:Z

.field private final INDEX_NAME:I

.field private final MAX_DB_SIZE:I

.field private final MAX_WORD_LENGTH:I

.field private MDB_FILE:Ljava/lang/String;

.field private MDB_FILE_TMP:Ljava/lang/String;

.field private SC_MDB_FILE:Ljava/lang/String;

.field private SC_MDB_FILE_TMP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private TARGET_FOLDER:Ljava/lang/String;

.field private TC_MDB_FILE:Ljava/lang/String;

.field private TC_MDB_FILE_TMP:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mReadyToCopy:Z

.field private mRequiresReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->INDEX_NAME:I

    .line 38
    const/16 v2, 0x20

    iput v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MAX_WORD_LENGTH:I

    .line 39
    const-string v2, "ContactsDBGenerator"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TAG:Ljava/lang/String;

    .line 40
    const/16 v2, 0x7800

    iput v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MAX_DB_SIZE:I

    .line 41
    const/16 v2, 0x80

    iput v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DB_BUFFER:I

    .line 43
    iput-boolean v3, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    .line 45
    iput-boolean v3, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mReadyToCopy:Z

    .line 46
    iput-boolean v3, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    .line 143
    const-string v2, "xt9_raw"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->ASSET_FOLDER:Ljava/lang/String;

    .line 144
    const-string v2, "db"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TARGET_FOLDER:Ljava/lang/String;

    .line 145
    const-string v2, "mdb_contact_name"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MDB_FILE:Ljava/lang/String;

    .line 146
    const-string v2, "mdb_contact_name_tmp"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MDB_FILE_TMP:Ljava/lang/String;

    .line 149
    const-string v2, "tc_mdb_contact_name"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TC_MDB_FILE:Ljava/lang/String;

    .line 150
    const-string v2, "tc_mdb_contact_name_tmp"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TC_MDB_FILE_TMP:Ljava/lang/String;

    .line 151
    const-string v2, "sc_mdb_contact_name"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->SC_MDB_FILE:Ljava/lang/String;

    .line 152
    const-string v2, "sc_mdb_contact_name_tmp"

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->SC_MDB_FILE_TMP:Ljava/lang/String;

    .line 408
    new-instance v2, Lcom/htc/android/htcime/util/ContactsDBGenerator$3;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/ContactsDBGenerator$3;-><init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V

    iput-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    .line 54
    iget-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name_phone_or_email"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;-><init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    iput-boolean v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    .line 81
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/htcime/util/ContactsDBGenerator$2;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/ContactsDBGenerator$2;-><init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/ContactsDBGenerator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/util/ContactsDBGenerator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/htcime/util/ContactsDBGenerator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->loadContactsDB()V

    return-void
.end method

.method private addWord(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "s"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, mWordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->binarySearch(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v0

    .line 363
    .local v0, r:I
    if-gez v0, :cond_0

    .line 364
    rsub-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private binarySearch(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .locals 6
    .parameter "array"
    .parameter "object"

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 387
    const/4 v2, -0x1

    .line 401
    :cond_0
    :goto_0
    return v2

    .line 390
    :cond_1
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, 0x0

    .local v2, mid:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, high:I
    const/4 v3, 0x0

    .line 391
    .local v3, result:I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 392
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 393
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 394
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 395
    :cond_2
    if-eqz v3, :cond_0

    .line 398
    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 401
    :cond_3
    neg-int v5, v2

    if-ltz v3, :cond_4

    const/4 v4, 0x1

    :goto_2
    sub-int v2, v5, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_2
.end method

.method private genCPDb(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mWordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 157
    iget-object v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 161
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TC_MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 163
    .local v6, tc_fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 164
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 166
    .local v4, len:I
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "big5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 168
    .local v0, b:[B
    array-length v7, v0

    mul-int/lit8 v8, v4, 0x2

    if-ne v7, v8, :cond_1

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-16le"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    iget-boolean v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v8, "ContactsDBGenerator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^^^Write(BIG5)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to TC DB"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .end local v0           #b:[B
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v4           #len:I
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 193
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mCPTCUDBUpdated:Z

    .line 196
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->SC_MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 198
    .local v5, sc_fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 199
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 202
    .restart local v4       #len:I
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "gb18030"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 204
    .restart local v0       #b:[B
    array-length v7, v0

    mul-int/lit8 v8, v4, 0x2

    if-ne v7, v8, :cond_3

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-16le"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 206
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 207
    iget-boolean v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v8, "ContactsDBGenerator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^^^Write "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to SC DB"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 198
    .end local v0           #b:[B
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 211
    .end local v4           #len:I
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 212
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mCPSCUDBUpdated:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    .end local v3           #i:I
    .end local v5           #sc_fos:Ljava/io/FileOutputStream;
    .end local v6           #tc_fos:Ljava/io/FileOutputStream;
    :goto_4
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ContactsDBGenerator"

    const-string v8, "add db error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 209
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v5       #sc_fos:Ljava/io/FileOutputStream;
    .restart local v6       #tc_fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 190
    .end local v5           #sc_fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto/16 :goto_1
.end method

.method private genDB(Landroid/database/Cursor;)V
    .locals 17
    .parameter "cursor"

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    if-nez v14, :cond_0

    .line 311
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v10, mWordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TARGET_FOLDER:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 228
    .local v5, f:Ljava/io/File;
    const/4 v2, -0x1

    .local v2, bytesRead:I
    const/4 v12, 0x0

    .line 246
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "ContactsDBGenerator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cursor count - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 249
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_7

    .line 250
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 252
    .local v11, name:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 253
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 256
    .local v9, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v9, :cond_6

    .line 257
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 259
    add-int/lit8 v8, v7, 0x1

    .local v8, j:I
    :goto_3
    if-ge v8, v9, :cond_2

    .line 260
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 262
    .local v3, c:C
    const/16 v14, 0x2d

    if-eq v3, v14, :cond_5

    const/16 v14, 0x27

    if-eq v3, v14, :cond_5

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_5

    .line 267
    .end local v3           #c:C
    :cond_2
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, word:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 269
    const-string v14, "ContactsDBGenerator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "word - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_3
    add-int/lit8 v7, v8, -0x1

    .line 274
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x20

    if-ge v14, v15, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 275
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->addWord(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 256
    .end local v8           #j:I
    .end local v13           #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 259
    .restart local v3       #c:C
    .restart local v8       #j:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 280
    .end local v3           #c:C
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #len:I
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 284
    .end local v11           #name:Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 286
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 287
    const-string v14, "ContactsDBGenerator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWordList size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_8

    .line 289
    const-string v15, "ContactsDBGenerator"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 295
    .end local v7           #i:I
    :cond_8
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 296
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 297
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "utf-16le"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 298
    .local v1, b:[B
    const/16 v14, 0x7800

    array-length v15, v1

    add-int/2addr v15, v12

    add-int/lit16 v15, v15, 0x80

    if-le v14, v15, :cond_9

    .line 299
    array-length v14, v1

    add-int/2addr v12, v14

    .line 300
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 303
    .end local v1           #b:[B
    :cond_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->genCPDb(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 308
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v7           #i:I
    :catch_0
    move-exception v4

    .line 309
    .local v4, e:Ljava/io/IOException;
    const-string v14, "ContactsDBGenerator"

    const-string v15, "add db error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadContactsDB()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ContactsDBGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadContactsDB, mRequiresReload - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    iput-boolean v9, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mReadyToCopy:Z

    .line 117
    const/4 v6, 0x0

    .line 119
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name_phone_or_email"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/util/ContactsDBGenerator;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 125
    :goto_1
    if-eqz v6, :cond_3

    .line 128
    :try_start_1
    invoke-direct {p0, v6}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->genDB(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_3
    iput-boolean v9, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mReadyToCopy:Z

    goto :goto_0

    .line 121
    :catch_0
    move-exception v7

    .line 122
    .local v7, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 123
    const-string v0, "ContactsDBGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsDBGenerator::loadContactsDB exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 130
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 133
    .local v8, toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ContactsDBGenerator"

    const-string v2, "close fail."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateMDB()V
    .locals 8

    .prologue
    .line 317
    iget-boolean v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mReadyToCopy:Z

    if-nez v5, :cond_0

    .line 342
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v5, "ContactsDBGenerator"

    const-string v6, "copy db... "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TARGET_FOLDER:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 324
    .local v1, f:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, f2:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->MDB_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 326
    iget-boolean v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ContactsDBGenerator"

    const-string v6, "rename success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mReadyToCopy:Z

    .line 331
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TC_MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, f3:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->TC_MDB_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 334
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->SC_MDB_FILE_TMP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, f4:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->SC_MDB_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1           #f:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    .end local v3           #f3:Ljava/io/File;
    .end local v4           #f4:Ljava/io/File;
    :goto_1
    const-string v5, "ContactsDBGenerator"

    const-string v6, "copy db... end"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ContactsDBGenerator"

    const-string v6, "updateMDB error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
