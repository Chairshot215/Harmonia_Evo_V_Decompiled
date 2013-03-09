.class public Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;
.super Ljava/lang/Object;
.source "VoiceImeLanguageUpdater.java"


# instance fields
.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 66
    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 67
    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mPackageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 1
    .parameter "context"
    .parameter "gservicesHelper"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mPackageName:Ljava/lang/String;

    .line 60
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->internalUpdateLanguages()V

    return-void
.end method

.method private createInputMethodSubtype(Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7
    .parameter "bcp47Locale"
    .parameter "javaLocale"

    .prologue
    .line 126
    const-string v4, "voice"

    .line 127
    .local v4, mode:Ljava/lang/String;
    const-string v5, "requireNetworkConnectivity"

    .line 128
    .local v5, extraValue:Ljava/lang/String;
    const/4 v6, 0x1

    .line 131
    .local v6, auxiliary:Z
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->getLocaleHumanReadableResourceId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getLocaleHumanReadableResourceId(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-class v2, Lcom/google/android/voicesearch/R$string;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice_ime_language_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v0

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    move v0, v1

    .line 158
    goto :goto_0

    .line 159
    :catch_2
    move-exception v0

    move v0, v1

    .line 162
    goto :goto_0
.end method

.method private internalUpdateLanguages()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 95
    :try_start_0
    iget-object v9, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v9}, Lcom/google/android/voicesearch/GservicesHelper;->getImeSupportedLanguages()[Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, bcp47Locales:[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v9}, Lcom/google/android/voicesearch/GservicesHelper;->getMapBcp47ToJavaLocale()Ljava/util/Map;

    move-result-object v7

    .line 99
    .local v7, localeMapping:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .local v8, newSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v0, v3

    .line 102
    .local v1, bcp47Locale:Ljava/lang/String;
    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, javaLocale:Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->createInputMethodSubtype(Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v5           #javaLocale:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v1           #bcp47Locale:Ljava/lang/String;
    :cond_1
    const-string v9, "VoiceImeLanguageUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#internalUpdateLanguages #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v9, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 114
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    iget-object v10, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    iput-object v12, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mAsyncTask:Landroid/os/AsyncTask;

    .line 123
    return-void

    .line 121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #bcp47Locales:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #len$:I
    .end local v7           #localeMapping:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #newSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v9

    iput-object v12, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mAsyncTask:Landroid/os/AsyncTask;

    throw v9
.end method


# virtual methods
.method public declared-synchronized updateLanguages()V
    .locals 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;-><init>(Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->mAsyncTask:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
