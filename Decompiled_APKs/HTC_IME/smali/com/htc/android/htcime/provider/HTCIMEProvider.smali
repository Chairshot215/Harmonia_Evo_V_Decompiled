.class public Lcom/htc/android/htcime/provider/HTCIMEProvider;
.super Landroid/content/ContentProvider;
.source "HTCIMEProvider.java"


# static fields
.field private static final ALL_KEY_CENTER_POS:I = 0x8

.field private static final ALPHABET_UDB_TIMESTAMP:I = 0xb

.field private static final ALPHABET_UDB_WORDS:I = 0x7

.field private static final AUTHORITY:Ljava/lang/String; = "htc_ime"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field private static final DEFAULT_LOCALE:I = 0x2

.field private static final DEFAULT_LOCALE_COLUMNS:[Ljava/lang/String; = null

.field public static final DIRECTORY_ALPHABET_UDB_TIMESTAMP:Ljava/lang/String; = "alphabet_udb_timestamp"

.field public static final DIRECTORY_ALPHABET_UDB_WORDS:Ljava/lang/String; = "alphabet_udb_words"

.field public static final DIRECTORY_SIP_STATUS:Ljava/lang/String; = "sip_status"

.field private static final GET_CURRENT_KEYBOARD:I = 0xf

.field private static final GET_INTERNATIONAL_KEYBOARDS:I = 0xd

.field private static final HELLO:I = 0x1

.field private static final HELLO_COLUMNS:[Ljava/lang/String; = null

.field private static final IME_STATUS_COLUMNS:[Ljava/lang/String; = null

.field private static final INFO:Z = true

.field private static final ONE_KEY_CENTER_POS:I = 0x9

.field private static final ONE_KEY_CENTER_POS_BY_TEXT:I = 0xa

.field public static final PROVIDER_LATIN_RC_CNTNAM:Landroid/net/Uri; = null

.field public static final PROVIDER_LATIN_RC_TOPWEB:Landroid/net/Uri; = null

.field private static final SET_CURRENT_KEYBOARD:I = 0x10

.field private static final SET_INTERNATIONAL_KEYBOARDS:I = 0xe

.field private static final SIP_STATUS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "HTCIMEProvider"

.field private static final TYPO_CORRECT_CONTACTS_DISPLAY_NAME:I = 0x3

.field private static final TYPO_CORRECT_TOP_WEBSITE:I = 0x6

.field private static final UDB_TIMESTAMP_COLUMNS:[Ljava/lang/String;

.field private static final UDB_WORDS_COLUMNS:[Ljava/lang/String;

.field private static mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHTCIME:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 62
    const-string v0, "content://htc_ime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "rc_contacts_display_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->PROVIDER_LATIN_RC_CNTNAM:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "rc_top_website"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->PROVIDER_LATIN_RC_TOPWEB:Landroid/net/Uri;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 211
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ECHO"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->HELLO_COLUMNS:[Ljava/lang/String;

    .line 221
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DEAULT_LOCALE_INDEX"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->DEFAULT_LOCALE_COLUMNS:[Ljava/lang/String;

    .line 232
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WORD"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->UDB_WORDS_COLUMNS:[Ljava/lang/String;

    .line 309
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TIMESTAMP"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->UDB_TIMESTAMP_COLUMNS:[Ljava/lang/String;

    .line 321
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SIP_SHOW_HIDE"

    aput-object v1, v0, v2

    const-string v1, "SIP_STATUS"

    aput-object v1, v0, v3

    const-string v1, "SIP_LANG"

    aput-object v1, v0, v4

    const-string v1, "SIP_IM"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "SIP_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->IME_STATUS_COLUMNS:[Ljava/lang/String;

    .line 470
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 471
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "hello"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "default_locale"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 473
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "typo_correct_contacts_display_name"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "typo_correct_top_website"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 475
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "alphabet_udb_words"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "key_center_pos"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "key_center_pos/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 478
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "key_center_pos_by_text"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 479
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "key_center_pos_by_text/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "alphabet_udb_timestamp"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "sip_status"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 482
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "get_international_keyboards"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "set_international_keyboards"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "get_current_keyboard"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime"

    const-string v2, "set_current_keyboard"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/provider/HTCIMEProvider;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method private insertAlphabetUDBWords(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 433
    const-string v1, "word"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, wordList:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 435
    const-string v1, "HTCIMEProvider"

    const-string v2, "[insertAlphabetUDBWords] Illegal! Word list is null, it must be specified."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 p1, 0x0

    .line 440
    .end local p1
    :goto_0
    return-object p1

    .line 439
    .restart local p1
    :cond_0
    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWords(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryAlphabetUDBTimestamp([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 6
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 313
    sget-object v3, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getTimeStamp()J

    move-result-wide v1

    .line 314
    .local v1, timeStamp:J
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/htc/android/htcime/provider/HTCIMEProvider;->UDB_TIMESTAMP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 315
    .local v0, mac:Landroid/database/MatrixCursor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 317
    return-object v0
.end method

.method private queryAlphabetUDBWords([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x0

    .line 236
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getWordAll()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, udbDataStr:Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProvider;->UDB_WORDS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 238
    .local v0, mac:Landroid/database/MatrixCursor;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 240
    return-object v0
.end method

.method private queryCurrentInternationalKeyboard()Landroid/database/MatrixCursor;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->queryCurrentInternationalKeyboard(Landroid/content/Context;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private queryDefaultLocale()Landroid/database/MatrixCursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProvider;->DEFAULT_LOCALE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 226
    .local v0, mac:Landroid/database/MatrixCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Performance Test"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 228
    return-object v0
.end method

.method private queryHello()Landroid/database/MatrixCursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProvider;->HELLO_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 216
    .local v0, mac:Landroid/database/MatrixCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Hello, this is HTCIMEProvider!!"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 218
    return-object v0
.end method

.method private queryImeStatus()Landroid/database/MatrixCursor;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 327
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v11, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 328
    :cond_0
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v11, :cond_2

    .line 358
    :cond_1
    :goto_0
    return-object v3

    .line 329
    :cond_2
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v11}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 331
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v11}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    .line 332
    .local v0, curData:Lcom/htc/android/htcime/HTCIMMData;
    if-eqz v0, :cond_1

    .line 334
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 335
    .local v1, curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    if-eqz v1, :cond_1

    .line 337
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v11, v11, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v11, :cond_4

    move v2, v10

    .line 338
    .local v2, fShow:Z
    :goto_1
    iget v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    .line 339
    .local v4, orientation:I
    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v11

    iget v5, v11, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 340
    .local v5, sipID:I
    invoke-virtual {v0, v4, v5}, Lcom/htc/android/htcime/HTCIMMData;->getSIPNameBySIPId(II)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, sipName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->getSIPTypeBySIPId(II)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, sipType:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->getIMTypeBySIPId(II)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, sipMethod:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v11}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPDisplay()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, sipLang:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v6, "CHS"

    .line 349
    :cond_3
    :goto_2
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v11, Lcom/htc/android/htcime/provider/HTCIMEProvider;->IME_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v3, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 350
    .local v3, mac:Landroid/database/MatrixCursor;
    const/4 v11, 0x6

    new-array v12, v11, [Ljava/lang/Object;

    if-eqz v2, :cond_6

    const-string v11, "SHOW"

    :goto_3
    aput-object v11, v12, v10

    aput-object v9, v12, v13

    const/4 v11, 0x2

    aput-object v6, v12, v11

    const/4 v11, 0x3

    aput-object v7, v12, v11

    const/4 v11, 0x4

    aput-object v8, v12, v11

    const/4 v11, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v11

    invoke-virtual {v3, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v2           #fShow:Z
    .end local v3           #mac:Landroid/database/MatrixCursor;
    .end local v4           #orientation:I
    .end local v5           #sipID:I
    .end local v6           #sipLang:Ljava/lang/String;
    .end local v7           #sipMethod:Ljava/lang/String;
    .end local v8           #sipName:Ljava/lang/String;
    .end local v9           #sipType:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v11, v11, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v2

    goto :goto_1

    .line 346
    .restart local v2       #fShow:Z
    .restart local v4       #orientation:I
    .restart local v5       #sipID:I
    .restart local v6       #sipLang:Ljava/lang/String;
    .restart local v7       #sipMethod:Ljava/lang/String;
    .restart local v8       #sipName:Ljava/lang/String;
    .restart local v9       #sipType:Ljava/lang/String;
    :cond_5
    const-string v6, "CHT"

    goto :goto_2

    .line 350
    .restart local v3       #mac:Landroid/database/MatrixCursor;
    :cond_6
    const-string v11, "HIDE"

    goto :goto_3
.end method

.method private queryInternationalKeyboards()Landroid/database/MatrixCursor;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->queryInternationalKeyboards(Landroid/content/Context;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0
.end method

.method private queryKeyCenterPos(I)Landroid/database/MatrixCursor;
    .locals 4
    .parameter "keycode"

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_2

    .line 254
    :cond_1
    :goto_0
    return-object v2

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v0, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 250
    .local v0, curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 252
    .local v1, fShow:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 254
    check-cast v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    .end local v0           #curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_0

    .line 251
    .end local v1           #fShow:Z
    .restart local v0       #curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    goto :goto_1
.end method

.method private queryKeyCenterPos(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 4
    .parameter "keyLabel"

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-object v2

    .line 263
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v0, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 264
    .local v0, curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 266
    .local v1, fShow:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 268
    check-cast v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    .end local v0           #curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->queryKeyCenterPos(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_0

    .line 265
    .end local v1           #fShow:Z
    .restart local v0       #curSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    goto :goto_1
.end method

.method private setCurrentInternationalKeyboard([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_2

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    new-instance v1, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;-><init>(Lcom/htc/android/htcime/provider/HTCIMEProvider;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setInternationalKeyboards([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v0, :cond_1

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->setInternationalKeyboards(Landroid/content/Context;[Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->updateCircle()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 453
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support delete. Failed to delete row in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 363
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 407
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    .line 404
    :goto_0
    return-object v0

    .line 368
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 371
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 374
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 377
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 381
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 383
    :pswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 386
    :pswitch_8
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 389
    :pswitch_9
    const-string v0, "vnd.android.cursor.dir/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 392
    :pswitch_a
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 395
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 398
    :pswitch_c
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 401
    :pswitch_d
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 404
    :pswitch_e
    const-string v0, "vnd.android.cursor.item/vnd.htc.android.htcime.data"

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, retUri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 418
    .local v1, uriCode:I
    const-string v2, "HTCIMEProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] coming request!  uriCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    packed-switch v1, :pswitch_data_0

    .line 426
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support insert for this URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->insertAlphabetUDBWords(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    return-object v0

    .line 420
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->mXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 106
    const/4 v7, 0x0

    .line 108
    .local v7, c:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 109
    .local v12, uriCode:I
    const-string v1, "HTCIMEProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[query] coming request!  uriCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    packed-switch v12, :pswitch_data_0

    .line 205
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryHello()Landroid/database/MatrixCursor;

    move-result-object v7

    .line 208
    :goto_0
    return-object v7

    .line 117
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryDefaultLocale()Landroid/database/MatrixCursor;

    move-result-object v7

    .line 118
    goto :goto_0

    .line 122
    :pswitch_3
    const/4 v10, 0x0

    .line 124
    .local v10, response:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProvider;->PROVIDER_LATIN_RC_CNTNAM:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 125
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->routeSolution(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 129
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_0
    const/4 v10, 0x0

    .line 132
    goto :goto_0

    .line 126
    :catch_0
    move-exception v8

    .line 127
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    const/4 v10, 0x0

    .line 132
    goto :goto_0

    .line 129
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_2
    const/4 v10, 0x0

    throw v1

    .line 138
    .end local v10           #response:Landroid/database/Cursor;
    :pswitch_4
    const/4 v10, 0x0

    .line 140
    .restart local v10       #response:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProvider;->PROVIDER_LATIN_RC_TOPWEB:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 141
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->routeSolution(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 145
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_3
    const/4 v10, 0x0

    .line 148
    goto :goto_0

    .line 142
    :catch_1
    move-exception v8

    .line 143
    .restart local v8       #e:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_4
    const/4 v10, 0x0

    .line 148
    goto :goto_0

    .line 145
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_5
    const/4 v10, 0x0

    throw v1

    .line 153
    .end local v10           #response:Landroid/database/Cursor;
    :pswitch_5
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryAlphabetUDBWords([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v7

    .line 154
    goto/16 :goto_0

    .line 158
    :pswitch_6
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;

    move-result-object v7

    .line 159
    goto/16 :goto_0

    .line 162
    :pswitch_7
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 163
    .local v9, keycode:I
    invoke-direct {p0, v9}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v7

    goto/16 :goto_0

    .line 164
    .end local v9           #keycode:I
    :catch_2
    move-exception v8

    .line 165
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v1, "HTCIMEProvider"

    const-string v2, "Can not parse uri, return all keys"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;

    move-result-object v7

    .line 168
    goto/16 :goto_0

    .line 171
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :pswitch_8
    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, text:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryKeyCenterPos(Ljava/lang/String;)Landroid/database/MatrixCursor;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v7

    goto/16 :goto_0

    .line 173
    .end local v11           #text:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 174
    .restart local v8       #e:Ljava/lang/NumberFormatException;
    const-string v1, "HTCIMEProvider"

    const-string v2, "Can not parse uri, return all keys"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;

    move-result-object v7

    .line 177
    goto/16 :goto_0

    .line 180
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryImeStatus()Landroid/database/MatrixCursor;

    move-result-object v7

    .line 181
    goto/16 :goto_0

    .line 183
    :pswitch_a
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryAlphabetUDBTimestamp([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v7

    .line 184
    goto/16 :goto_0

    .line 186
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryInternationalKeyboards()Landroid/database/MatrixCursor;

    move-result-object v7

    .line 187
    goto/16 :goto_0

    .line 189
    :pswitch_c
    if-eqz p2, :cond_6

    array-length v1, p2

    if-lez v1, :cond_6

    .line 190
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->setInternationalKeyboards([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandWrite Engine invalid parameter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :pswitch_d
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->queryCurrentInternationalKeyboard()Landroid/database/MatrixCursor;

    move-result-object v7

    .line 196
    goto/16 :goto_0

    .line 198
    :pswitch_e
    if-eqz p2, :cond_7

    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 199
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->setCurrentInternationalKeyboard([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandWrite Engine invalid parameter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 466
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support update. Failed to update row in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
