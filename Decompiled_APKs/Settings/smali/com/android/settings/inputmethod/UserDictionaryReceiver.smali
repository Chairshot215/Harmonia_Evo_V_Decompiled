.class public Lcom/android/settings/inputmethod/UserDictionaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserDictionaryReceiver.java"


# static fields
.field private static final DELETE_SELECTION:Ljava/lang/String; = "word=?"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "UserDictionaryReceiver"

.field private static final LS:Ljava/lang/String; = "\'s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addWord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "word"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->deleteWord(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const/16 v0, 0xfa

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private deleteWord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "word"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method private insertWordIntoUDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "word"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->peelInputLotus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 61
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "word"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "content://htc_ime"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "alphabet_udb_words"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, provider_uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1           #provider_uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "UserDictionaryReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call HTCIME provider to add word e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private peelInputLotus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 49
    const-string v0, "\'s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\'s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 52
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "word"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, word:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->insertWordIntoUDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->addWord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
