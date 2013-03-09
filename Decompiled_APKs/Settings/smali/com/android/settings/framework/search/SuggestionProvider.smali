.class public Lcom/android/settings/framework/search/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;,
        Lcom/android/settings/framework/search/SuggestionProvider$Target;
    }
.end annotation


# static fields
.field private static final COLUMNS_TYPE_1:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field static sSearchTarget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/framework/search/SuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->COLUMNS_TYPE_1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 359
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->COLUMNS_TYPE_1:[Ljava/lang/String;

    return-object v0
.end method

.method private doSearch(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "query"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :cond_0
    return-object v1

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 349
    const/4 v0, 0x0

    .local v0, index:I
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 350
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    iget-object v3, v3, Lcom/android/settings/framework/search/SuggestionProvider$Target;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private makeEmptyCursor()Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 295
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public loadResources()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/search/SuggestionProvider$1;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public loadResourcesInBackground()V
    .locals 5

    .prologue
    .line 113
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0909

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0701

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 127
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c08b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0702

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 135
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c007c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0705

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 145
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0842

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0703

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 153
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0367

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0707

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 161
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0708

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 170
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0997

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0709

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 178
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c09c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c070a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 186
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c09f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c070b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 194
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c058c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$Power"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c070c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 202
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0ad3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c070d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 210
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c070f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 226
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0343

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.android.psclient"

    const-string v4, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Setting_Type"

    const-string v4, "USB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0710

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 234
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0359

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0711

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 242
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0128

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0712

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 250
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0147

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0713

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 258
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c084e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DateTimeSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0714

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 266
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0b9d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$AccessibilitySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 272
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0715

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 274
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0129

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DevelopmentSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0716

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 282
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a95

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$HtcAboutPhoneActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0717

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 290
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->loadResources()V

    .line 92
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->loadResources()V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, query:Ljava/lang/String;
    const-string v4, "limit"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, paramter:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, limit:I
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->makeEmptyCursor()Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    move-result-object v4

    .line 334
    :goto_1
    return-object v4

    .line 326
    .end local v0           #limit:I
    :cond_0
    const v0, 0x7fffffff

    .restart local v0       #limit:I
    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/settings/framework/search/SuggestionProvider;->doSearch(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 334
    .local v3, queryResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    new-instance v4, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
