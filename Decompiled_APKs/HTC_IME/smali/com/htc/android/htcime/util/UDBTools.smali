.class public Lcom/htc/android/htcime/util/UDBTools;
.super Ljava/lang/Object;
.source "UDBTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/UDBTools$StringCmp;,
        Lcom/htc/android/htcime/util/UDBTools$UDBEntryCmp;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static HTC_WORDS:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "UDBTools"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dont"

    aput-object v1, v0, v2

    const-string v1, "Plurk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    .line 81
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const-string v1, "could\'ve"

    aput-object v1, v0, v2

    .line 83
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const-string v1, "dell"

    aput-object v1, v0, v3

    .line 84
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const-string v1, "dont"

    aput-object v1, v0, v4

    .line 85
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "Han"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "het"

    aput-object v2, v0, v1

    .line 87
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "mal"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "nog"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "nous"

    aput-object v2, v0, v1

    .line 90
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Plurk"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "rotfl"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "should\'ve"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "to-be"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "uni"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "would\'ve"

    aput-object v2, v0, v1

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;
    .locals 6
    .parameter "words"

    .prologue
    .line 38
    const-string v4, "\\|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 39
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 40
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, wordlist:[Ljava/lang/String;
    :goto_0
    array-length v4, v3

    new-array v0, v4, [Lcom/htc/android/htcime/util/UDBEntry;

    .line 46
    .local v0, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 47
    new-instance v4, Lcom/htc/android/htcime/util/UDBEntry;

    aget-object v5, v3, v1

    invoke-direct {v4, v5}, Lcom/htc/android/htcime/util/UDBEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    .end local v0           #entries:[Lcom/htc/android/htcime/util/UDBEntry;
    .end local v1           #i:I
    .end local v3           #wordlist:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .restart local v3       #wordlist:[Ljava/lang/String;
    goto :goto_0

    .line 50
    .restart local v0       #entries:[Lcom/htc/android/htcime/util/UDBEntry;
    .restart local v1       #i:I
    :cond_1
    return-object v0
.end method
