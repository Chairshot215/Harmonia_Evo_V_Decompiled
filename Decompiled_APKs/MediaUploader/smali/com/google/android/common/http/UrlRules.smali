.class public Lcom/google/android/common/http/UrlRules;
.super Ljava/lang/Object;
.source "UrlRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/UrlRules$Rule;,
        Lcom/google/android/common/http/UrlRules$RuleFormatException;
    }
.end annotation


# static fields
.field private static final PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern; = null

.field private static final RULE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final TAG:Ljava/lang/String; = "UrlRules"

.field private static sCachedRules:Lcom/google/android/common/http/UrlRules;

.field private static sCachedVersionToken:Ljava/lang/Object;


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mRules:[Lcom/google/android/common/http/UrlRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    .line 140
    new-instance v0, Lcom/google/android/common/http/UrlRules;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/UrlRules$Rule;)V

    sput-object v0, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/common/http/UrlRules$Rule;)V
    .locals 4
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 163
    if-lez v1, :cond_0

    const-string v2, ")|("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    sget-object v2, Lcom/google/android/common/http/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    .line 167
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    .line 168
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/common/http/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static declared-synchronized getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;
    .locals 8
    .parameter

    .prologue
    .line 193
    const-class v1, Lcom/google/android/common/http/UrlRules;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v2

    .line 194
    sget-object v0, Lcom/google/android/common/http/UrlRules;->sCachedVersionToken:Ljava/lang/Object;

    if-ne v2, v0, :cond_1

    .line 196
    const-string v0, "UrlRules"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "UrlRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using cached rules, versionToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-object v0, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    monitor-exit v1

    return-object v0

    .line 202
    :cond_1
    :try_start_1
    const-string v0, "UrlRules"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "UrlRules"

    const-string v3, "Scanning for Gservices \"url:*\" rules"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url:"

    aput-object v4, v0, v3

    invoke-static {p0, v0}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 212
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    const-string v5, "UrlRules"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "UrlRules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Rule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    new-instance v5, Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v5, v0, p0}, Lcom/google/android/common/http/UrlRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/common/http/UrlRules$RuleFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 217
    :try_start_3
    const-string v5, "UrlRules"

    const-string v6, "Invalid rule from Gservices"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 220
    :cond_5
    :try_start_4
    new-instance v0, Lcom/google/android/common/http/UrlRules;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0, p0}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/UrlRules$Rule;)V

    sput-object v0, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;

    .line 221
    sput-object v2, Lcom/google/android/common/http/UrlRules;->sCachedVersionToken:Ljava/lang/Object;

    .line 222
    const-string v0, "UrlRules"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    const-string v0, "UrlRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rules stored, versionToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_6
    sget-object v0, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;
    .locals 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 179
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    aget-object v0, v0, v1

    .line 184
    :goto_1
    return-object v0

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    goto :goto_1
.end method
