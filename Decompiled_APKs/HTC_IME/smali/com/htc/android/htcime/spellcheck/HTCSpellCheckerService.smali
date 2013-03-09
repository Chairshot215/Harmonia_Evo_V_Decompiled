.class public Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;
.super Landroid/service/textservice/SpellCheckerService;
.source "HTCSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$1;,
        Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HTCSpellCheckerService"

.field static mInstance:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

.field private static sSIE_LOCAL_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->mInstance:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService;-><init>()V

    .line 155
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->isLocaleSupportSIE(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/view/textservice/SuggestionsInfo;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/textservice/SuggestionsInfo;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method private static isLocaleSupportSIE(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, flag:Z
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 136
    sget-object v3, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->loadHTCIMESIE(Landroid/content/Context;)V

    .line 140
    :cond_1
    sget-object v3, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, locale_set:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, c:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    const/4 v1, 0x1

    .line 150
    .end local v0           #c:Ljava/lang/String;
    .end local v2           #locale_set:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    return v1
.end method

.method private static loadHTCIMESIE(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 57
    const-string v9, "HTCSpellCheckerService"

    const-string v10, "loadHTCIMESIE() "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    if-nez v9, :cond_0

    .line 61
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    .line 65
    :cond_0
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eqz v9, :cond_2

    .line 131
    :cond_1
    return-void

    .line 68
    :cond_2
    new-instance v3, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v9, "system_InputMethod"

    invoke-direct {v3, p0, v9}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .local v3, customUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 72
    .local v5, r:Landroid/content/res/Resources;
    const v9, 0x7f07002b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, SIELocaleMap:[Ljava/lang/String;
    const-string v9, "HTCSpellCheckerService"

    const-string v10, "loadHTCIMESIE() 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v7, 0x0

    .local v7, t:I
    :goto_0
    array-length v9, v0

    if-ge v7, v9, :cond_4

    .line 76
    aget-object v9, v0, v7

    if-eqz v9, :cond_3

    .line 77
    aget-object v9, v0, v7

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, s:[Ljava/lang/String;
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v6           #s:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    :cond_4
    const-string v9, "HTCSpellCheckerService"

    const-string v10, "-- Before loading SIE --"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, cid:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, c:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, l:Ljava/lang/String;
    const-string v9, "HTCSpellCheckerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid-locale:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    .end local v1           #c:Ljava/lang/String;
    .end local v4           #l:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "IME_language_set"

    const-string v11, "English"

    invoke-virtual {v3, v9, v10, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    .line 96
    :cond_6
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .restart local v1       #c:Ljava/lang/String;
    const-string v9, "English"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 106
    .end local v1           #c:Ljava/lang/String;
    :cond_8
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .restart local v1       #c:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "IME_language_set"

    invoke-virtual {v3, v9, v10, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, tmp:Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 113
    const-string v9, "HTCSpellCheckerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gather tmp-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_a
    if-eqz v8, :cond_b

    const-string v9, "yes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 117
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 123
    .end local v1           #c:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_c
    const-string v9, "HTCSpellCheckerService"

    const-string v10, "-- After loading SIE --"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .restart local v1       #c:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .restart local v4       #l:Ljava/lang/String;
    const-string v9, "HTCSpellCheckerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid-locale:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static peekInstance()Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->mInstance:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    return-object v0
.end method


# virtual methods
.method public createSession()Landroid/service/textservice/SpellCheckerService$Session;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->mInstance:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    if-nez v0, :cond_0

    .line 40
    sput-object p0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;->mInstance:Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService;

    .line 41
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$SpellCheckerSession;-><init>(Lcom/htc/android/htcime/spellcheck/HTCSpellCheckerService$1;)V

    return-object v0
.end method
