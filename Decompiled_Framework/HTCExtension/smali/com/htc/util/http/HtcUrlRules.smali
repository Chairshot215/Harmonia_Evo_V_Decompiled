.class public Lcom/htc/util/http/HtcUrlRules;
.super Ljava/lang/Object;
.source "HtcUrlRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/http/HtcUrlRules$Rule;,
        Lcom/htc/util/http/HtcUrlRules$RuleFormatException;
    }
.end annotation


# static fields
.field private static final PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

.field private static final RULE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCachedDigest:Ljava/lang/String;

.field private static sCachedRules:Lcom/htc/util/http/HtcUrlRules;


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mRules:[Lcom/htc/util/http/HtcUrlRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/util/http/HtcUrlRules;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/util/http/HtcUrlRules$Rule;

    invoke-direct {v0, v1}, Lcom/htc/util/http/HtcUrlRules;-><init>([Lcom/htc/util/http/HtcUrlRules$Rule;)V

    sput-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedRules:Lcom/htc/util/http/HtcUrlRules;

    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/http/HtcUrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/http/HtcUrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedDigest:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/htc/util/http/HtcUrlRules$Rule;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Lcom/htc/util/http/HtcUrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/htc/util/http/HtcUrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/http/HtcUrlRules;->mPattern:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/htc/util/http/HtcUrlRules;->mRules:[Lcom/htc/util/http/HtcUrlRules$Rule;

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/htc/util/http/HtcUrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static declared-synchronized getRules(Landroid/content/ContentResolver;)Lcom/htc/util/http/HtcUrlRules;
    .locals 13

    const-class v12, Lcom/htc/util/http/HtcUrlRules;

    monitor-enter v12

    :try_start_0
    const-string v0, "digest"

    invoke-static {p0, v0}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedDigest:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedDigest:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedRules:Lcom/htc/util/http/HtcUrlRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit v12

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Landroid/provider/Settings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name like \"url:%\""

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/util/http/HtcUrlRules$Rule;

    invoke-direct {v0, v9, v11}, Lcom/htc/util/http/HtcUrlRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/htc/util/http/HtcUrlRules$RuleFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_4
    const-string v0, "HtcUrlRules"

    const-string v1, "Invalid rule from HTCservices"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_ERROR:Landroid/provider/htcCheckin$Events$Tag;

    invoke-virtual {v8}, Lcom/htc/util/http/HtcUrlRules$RuleFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_2
    :try_start_6
    new-instance v1, Lcom/htc/util/http/HtcUrlRules;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/htc/util/http/HtcUrlRules$Rule;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/http/HtcUrlRules$Rule;

    invoke-direct {v1, v0}, Lcom/htc/util/http/HtcUrlRules;-><init>([Lcom/htc/util/http/HtcUrlRules$Rule;)V

    sput-object v1, Lcom/htc/util/http/HtcUrlRules;->sCachedRules:Lcom/htc/util/http/HtcUrlRules;

    sput-object v7, Lcom/htc/util/http/HtcUrlRules;->sCachedDigest:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/htc/util/http/HtcUrlRules;->sCachedRules:Lcom/htc/util/http/HtcUrlRules;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method


# virtual methods
.method public matchRule(Ljava/lang/String;)Lcom/htc/util/http/HtcUrlRules$Rule;
    .locals 3

    iget-object v2, p0, Lcom/htc/util/http/HtcUrlRules;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/util/http/HtcUrlRules;->mRules:[Lcom/htc/util/http/HtcUrlRules$Rule;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/http/HtcUrlRules;->mRules:[Lcom/htc/util/http/HtcUrlRules$Rule;

    aget-object v2, v2, v0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/htc/util/http/HtcUrlRules$Rule;->DEFAULT:Lcom/htc/util/http/HtcUrlRules$Rule;

    goto :goto_1
.end method
