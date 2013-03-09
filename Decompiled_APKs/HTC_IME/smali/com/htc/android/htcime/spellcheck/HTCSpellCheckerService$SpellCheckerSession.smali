.class Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "HTCSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerSession"
.end annotation


# instance fields
.field SC_LOCALE_URI:Landroid/net/Uri;

.field private mLocale:Ljava/lang/String;

.field private mLocaleSupportFlag:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocaleSupportFlag:Z

    .line 262
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "sc_locale_assign"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->SC_LOCALE_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;-><init>()V

    return-void
.end method

.method private arrowPeeler(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "src_str"

    .prologue
    const/4 v3, -0x1

    .line 351
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 352
    .local v1, autoCmp_Start:I
    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 353
    .local v0, autoCmp_End:I
    if-eq v3, v1, :cond_0

    if-eq v3, v0, :cond_0

    if-ge v1, v0, :cond_0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    :cond_0
    return-object p1
.end method

.method private isCJKCharacter(C)Z
    .locals 3
    .parameter "character"

    .prologue
    .line 277
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 287
    .local v0, ret:Z
    :goto_0
    return v0

    .line 277
    .end local v0           #ret:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialCaseForNonWord(Ljava/lang/String;)Z
    .locals 10
    .parameter "nonWord"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 325
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 329
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 330
    const-string v7, "HTCSpellCheckerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSpecialCaseForNonWord] This word include non-letter/digit character. word="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0           #codePoint:I
    :goto_1
    return v6

    .line 325
    .restart local v0       #codePoint:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0           #codePoint:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, nonWord_LC:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, nonWord_UC:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, nonWord_LC_firstCharUC:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 343
    const-string v7, "HTCSpellCheckerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSpecialCaseForNonWord] This word is a TingWei case. word="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v6, v7

    .line 347
    goto :goto_1
.end method

.method private querySCLocaleAssign(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    .line 264
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->SC_LOCALE_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 267
    :cond_0
    return-void
.end method

.method private querySCSuggestions(Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "service"
    .parameter "exactWord"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 230
    const/4 v8, 0x1

    .line 232
    .local v8, isKnownWord:Z
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sc_general"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v9

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 235
    const-string v0, "HTCSpellCheckerService"

    const-string v2, "[onGetSuggestions] Error occur while query provider for spell correction. (cursor is null)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1
    return v8

    .line 237
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    const-string v0, "HTCSpellCheckerService"

    const-string v2, "[onGetSuggestions] Error occur while query provider for spell correction. (cursor is empty)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, isKnowWord_Str:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 245
    const-string v0, "N"

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v8, 0x0

    .line 248
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private shouldFilterOut(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v4

    .line 303
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 304
    .local v2, length:I
    const/4 v3, 0x0

    .line 305
    .local v3, letterCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 312
    .local v0, codePoint:I
    const/16 v5, 0x40

    if-eq v5, v0, :cond_0

    const/16 v5, 0x2f

    if-eq v5, v0, :cond_0

    .line 314
    int-to-char v5, v0

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->isCJKCharacter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    add-int/lit8 v3, v3, 0x1

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v0           #codePoint:I
    :cond_3
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocale:Ljava/lang/String;

    .line 164
    const-string v1, "HTCSpellCheckerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session onCreate():  mLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->peekInstance()Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    move-result-object v0

    .line 167
    .local v0, service:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocale:Ljava/lang/String;

    #calls: Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->isLocaleSupportSIE(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocaleSupportFlag:Z

    .line 169
    iget-boolean v1, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocaleSupportFlag:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->querySCLocaleAssign(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 11
    .parameter "textInfo"
    .parameter "suggestionsLimit"

    .prologue
    const/4 v7, 0x0

    .line 190
    const-string v8, "HTCSpellCheckerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetSuggestions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v8, p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->mLocaleSupportFlag:Z

    if-nez v8, :cond_0

    .line 195
    #calls: Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v7

    .line 225
    :goto_0
    return-object v7

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, input:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->peekInstance()Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    move-result-object v5

    .line 201
    .local v5, service:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;
    if-eqz v5, :cond_4

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->shouldFilterOut(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 202
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v6, suggestion_words:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v5, v2, v6}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->querySCSuggestions(Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    .line 206
    .local v3, isKnownWord:Z
    if-nez v3, :cond_3

    .line 207
    const-string v8, "HTCSpellCheckerService"

    const-string v9, "non word"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x2

    .line 209
    .local v0, flags:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;->isSpecialCaseForNonWord(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 211
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, s:Ljava/lang/String;
    const-string v8, "HTCSpellCheckerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suggestion : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    new-instance v8, Landroid/view/textservice/SuggestionsInfo;

    const/4 v9, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    .line 217
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v7, "HTCSpellCheckerService"

    const-string v8, "non word, no suggestion"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    #calls: Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->access$300()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v7

    goto :goto_0

    .line 221
    .end local v0           #flags:I
    :cond_3
    const-string v8, "HTCSpellCheckerService"

    const-string v9, "known word"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v3           #isKnownWord:Z
    .end local v6           #suggestion_words:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v8, "HTCSpellCheckerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "do nothing, service is null = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    #calls: Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 3
    .parameter "textInfos"
    .parameter "suggestionsLimit"
    .parameter "sequentialWords"

    .prologue
    .line 179
    const-string v0, "HTCSpellCheckerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSuggestionsMultiple:  total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "suggestionsLimit - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sequentialWords - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method
