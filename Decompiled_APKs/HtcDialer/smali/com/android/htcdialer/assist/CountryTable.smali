.class public Lcom/android/htcdialer/assist/CountryTable;
.super Ljava/lang/Object;
.source "CountryTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/assist/CountryTable$Country;,
        Lcom/android/htcdialer/assist/CountryTable$Key;
    }
.end annotation


# static fields
.field private static final CACHE_ENABLED:Z = true

.field public static final DEBUG:Z = true

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field public static final TAG:Ljava/lang/String; = "CountryTable"

.field private static sCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLocale:Ljava/util/Locale;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/assist/CountryTable;->initialize(Landroid/content/res/Resources;)Ljava/util/List;

    .line 95
    return-void
.end method

.method private AddCountriesFromXml(Landroid/content/res/Resources;)V
    .locals 8
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v6, "CountryTable"

    const-string v7, "AddCountriesByParsingXml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v4, sb:Ljava/lang/StringBuffer;
    const/high16 v6, 0x7f04

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 147
    .local v5, xpp:Landroid/content/res/XmlResourceParser;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 148
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 149
    .local v2, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    .line 150
    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 152
    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 153
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    .line 154
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/android/htcdialer/assist/CountryTable$Country;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/assist/CountryTable$Country;-><init>(Lcom/android/htcdialer/assist/CountryTable;)V

    .line 156
    .local v1, country:Lcom/android/htcdialer/assist/CountryTable$Country;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 157
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/htcdialer/assist/CountryTable$Country;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 159
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/htcdialer/assist/CountryTable;->addCountry(Lcom/android/htcdialer/assist/CountryTable$Country;)V

    goto :goto_1

    .line 161
    .end local v0           #count:I
    .end local v1           #country:Lcom/android/htcdialer/assist/CountryTable$Country;
    .end local v3           #i:I
    :cond_3
    const/4 v6, 0x3

    if-eq v2, v6, :cond_0

    .line 163
    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    goto :goto_1

    .line 168
    :cond_4
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/htcdialer/assist/CountryTable;->extractSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCountry(Lcom/android/htcdialer/assist/CountryTable$Country;)V
    .locals 3
    .parameter "country"

    .prologue
    .line 172
    const-string v0, "CountryTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCountry: country = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/htcdialer/assist/CountryTable$Country;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Lcom/android/htcdialer/assist/CountryTable$Country;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    sput-object v0, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    .line 221
    sput-object v0, Lcom/android/htcdialer/assist/CountryTable;->sLocale:Ljava/util/Locale;

    .line 222
    return-void
.end method

.method public static containValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "v"
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 226
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v5

    .line 228
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 230
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 231
    const/4 v5, 0x1

    goto :goto_0

    .line 229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private dispatchLocaleChanged()V
    .locals 4

    .prologue
    .line 181
    const-string v2, "CountryTable"

    const-string v3, "dispatchLocaleChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 184
    .local v0, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Lcom/android/htcdialer/assist/CountryTable$Country;

    .end local v0           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/htcdialer/assist/CountryTable$Country;->updateDisplayName()V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private static final extractSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "source"

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 197
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 198
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 199
    .local v2, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    iget-object v4, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 201
    .end local v2           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 204
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .restart local p0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, ""

    goto :goto_1
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 105
    .local v1, locale:Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    sget-object v2, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "CountryTable"

    const-string v3, "getData: Load"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v2, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    iput-object v2, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    .line 112
    sget-object v2, Lcom/android/htcdialer/assist/CountryTable;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/htcdialer/assist/CountryTable;->dispatchLocaleChanged()V

    .line 114
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    sput-object v2, Lcom/android/htcdialer/assist/CountryTable;->sLocale:Ljava/util/Locale;

    .line 135
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    return-object v2

    .line 118
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/htcdialer/assist/CountryTable;->AddCountriesFromXml(Landroid/content/res/Resources;)V

    .line 119
    sget-object v2, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    if-nez v2, :cond_2

    .line 121
    const-string v2, "CountryTable"

    const-string v3, "getData: Save"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable;->mList:Ljava/util/List;

    sput-object v2, Lcom/android/htcdialer/assist/CountryTable;->sCache:Ljava/util/List;

    .line 124
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    sput-object v2, Lcom/android/htcdialer/assist/CountryTable;->sLocale:Ljava/util/Locale;

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/android/htcdialer/assist/CountryTable;->dispatchLocaleChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CountryTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/htcdialer/assist/CountryTable;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 210
    .local v0, country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    .end local v0           #country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
