.class public Lcom/android/mms/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# static fields
.field public static final DEFAULT_SMILEY_NAMES:I = 0x7f06001a

.field public static final DEFAULT_SMILEY_RES_IDS:[I = null

.field public static final DEFAULT_SMILEY_TEXTS:I = 0x7f060019

.field private static sInstance:Lcom/android/mms/util/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0x5ct 0x2t 0x8t 0x1t
        0x61t 0x2t 0x8t 0x1t
        0x65t 0x2t 0x8t 0x1t
        0x63t 0x2t 0x8t 0x1t
        0x62t 0x2t 0x8t 0x1t
        0x5dt 0x2t 0x8t 0x1t
        0x67t 0x2t 0x8t 0x1t
        0x58t 0x2t 0x8t 0x1t
        0x60t 0x2t 0x8t 0x1t
        0x5bt 0x2t 0x8t 0x1t
        0x5at 0x2t 0x8t 0x1t
        0x57t 0x2t 0x8t 0x1t
        0x64t 0x2t 0x8t 0x1t
        0x59t 0x2t 0x8t 0x1t
        0x5ft 0x2t 0x8t 0x1t
        0x5et 0x2t 0x8t 0x1t
        0x66t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    .line 67
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 68
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 8

    .prologue
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 127
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v2, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 108
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/android/mms/util/SmileyParser;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/android/mms/util/SmileyParser;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-class v1, Lcom/android/mms/util/SmileyParser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 55
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/mms/util/SmileyParser;

    invoke-direct {v0, p0}, Lcom/android/mms/util/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"

    .prologue
    .line 146
    if-nez p1, :cond_0

    const-string p1, ""

    .line 147
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 150
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    .local v2, resId:I
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 157
    .end local v2           #resId:I
    :cond_1
    return-object v0
.end method
