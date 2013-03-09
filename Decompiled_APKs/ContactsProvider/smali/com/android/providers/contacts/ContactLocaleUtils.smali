.class public Lcom/android/providers/contacts/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLocaleUtils$1;,
        Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;


# instance fields
.field private mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

.field private mLanguage:Ljava/lang/String;

.field private mUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 127
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 128
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Ljava/util/HashMap;

    .line 134
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 140
    return-void
.end method

.method private declared-synchronized get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 3
    .parameter "nameStyle"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 177
    .local v0, utils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 179
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;

    .end local v0           #utils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;Lcom/android/providers/contacts/ContactLocaleUtils$1;)V

    .line 180
    .restart local v0       #utils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #utils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAdjustedStyle(I)I
    .locals 2
    .parameter "nameStyle"

    .prologue
    .line 204
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 p1, 0x3

    .line 208
    .end local p1
    :cond_0
    return p1
.end method

.method private getForNameLookup(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 4
    .parameter "nameStyle"

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 168
    .local v1, nameStyleInt:I
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getAdjustedStyle(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    .local v0, adjustedUtil:Ljava/lang/Integer;
    sget-object v2, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v2

    return-object v2
.end method

.method private getForSort(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 1
    .parameter "nameStyle"

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getAdjustedStyle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 2

    .prologue
    .line 197
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    .line 200
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .parameter "name"
    .parameter "nameStyle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getForNameLookup(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "displayName"
    .parameter "nameStyle"

    .prologue
    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getForSort(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "currentLocale"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method
