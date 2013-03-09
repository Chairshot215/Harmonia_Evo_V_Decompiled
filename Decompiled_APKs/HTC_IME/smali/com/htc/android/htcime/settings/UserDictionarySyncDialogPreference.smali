.class Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "UserDictionarySyncDialogPreference.java"


# static fields
.field private static final ALPHABET_USER_DICTIONARY_FILE:Ljava/lang/String; = "UserDictionary"

.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field private static final READ_BUFF_SIZE:I = 0x400

.field private static final STORAGE_PATH:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBackupKey:Ljava/lang/String;

.field private mRID_user_dictionary_sync_sdcard_unavailable_toast:I

.field private mRestoreKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HTC_IME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->STORAGE_PATH:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const v0, 0x1010090

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRID_user_dictionary_sync_sdcard_unavailable_toast:I

    .line 66
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_0

    .line 67
    const v0, 0x7f09006e

    iput v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRID_user_dictionary_sync_sdcard_unavailable_toast:I

    .line 72
    :goto_0
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->setDialogIcon(I)V

    .line 73
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->initKey()V

    .line 74
    return-void

    .line 69
    :cond_0
    const v0, 0x7f09006d

    iput v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRID_user_dictionary_sync_sdcard_unavailable_toast:I

    goto :goto_0
.end method

.method private backup()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, es_state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[backup] External storage is not available. state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRID_user_dictionary_sync_sdcard_unavailable_toast:I

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->STORAGE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, dataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    iget-object v6, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[backup] Unable to create directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1           #dataDir:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v7, "[backup]: file output failed, give up backup. "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dataDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UserDictionary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    iget-object v6, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[backup] Unable to create file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v5, words:Ljava/lang/StringBuilder;
    invoke-direct {p0, v5}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->querryAlphabetUserDictionary(Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 125
    iget-object v6, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v7, "[backup] Unable to backup user dictionary."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :cond_3
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 131
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 135
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090067

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mBackupKey:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRestoreKey:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private insertAlphabetUserDictionary(Ljava/lang/StringBuilder;)Z
    .locals 6
    .parameter "strBuilder"

    .prologue
    const/4 v3, 0x1

    .line 211
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 212
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "word"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v4, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "alphabet_udb_words"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    .local v0, provider_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    .local v1, retUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 217
    const/4 v3, 0x0

    .line 219
    :cond_0
    return v3
.end method

.method private querryAlphabetUserDictionary(Ljava/lang/StringBuilder;)Z
    .locals 9
    .parameter "strBuilder"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 184
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "alphabet_udb_words"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, provider_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 186
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (cursor is null)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 207
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (cursor is empty)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 192
    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, alphabetUDBData:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (alphabetUDBData is null)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 198
    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v8, v0, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private restore()V
    .locals 11

    .prologue
    const/16 v9, 0x400

    const/4 v10, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, es_state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    iget-object v7, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[restore] External storage is not available. state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRID_user_dictionary_sync_sdcard_unavailable_toast:I

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UserDictionary"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    iget-object v7, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[restore] File not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v6, strBuilder:Ljava/lang/StringBuilder;
    new-array v1, v9, [C

    .line 163
    .local v1, buff:[C
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v0, br:Ljava/io/BufferedReader;
    :goto_1
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v0, v1, v7, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    .local v5, readLen:I
    if-lez v5, :cond_2

    .line 166
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #readLen:I
    :catch_0
    move-exception v2

    .line 171
    .local v2, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[restore] File read error, give up restore. File path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #readLen:I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    invoke-direct {p0, v6}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->insertAlphabetUserDictionary(Ljava/lang/StringBuilder;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09006c

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 179
    :cond_3
    iget-object v7, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->TAG:Ljava/lang/String;

    const-string v8, "[restore] Unable to restore user dictionary!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mBackupKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->backup()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->mRestoreKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->restore()V

    goto :goto_0
.end method
