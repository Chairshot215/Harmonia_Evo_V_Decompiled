.class Lcom/android/mms/wrapper/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/wrapper/HttpDateTime$1;,
        Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,3})[ ]+([0-9]{1,2})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,3})[- ]([0-9]{2,4})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,3})[- ]([0-9]{2,4})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/wrapper/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "[ ]([A-Za-z]{3,3})[ ]+([0-9]{1,2})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/wrapper/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3
    .parameter "dateString"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 6
    .parameter "monthString"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit16 v0, v4, -0x123

    .line 124
    .local v0, hash:I
    sparse-switch v0, :sswitch_data_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :sswitch_0
    move v1, v2

    .line 148
    :goto_0
    :sswitch_1
    return v1

    :sswitch_2
    move v1, v3

    .line 130
    goto :goto_0

    .line 132
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 134
    :sswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 136
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 138
    :sswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 140
    :sswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 142
    :sswitch_8
    const/16 v1, 0x8

    goto :goto_0

    .line 144
    :sswitch_9
    const/16 v1, 0x9

    goto :goto_0

    .line 146
    :sswitch_a
    const/16 v1, 0xa

    goto :goto_0

    .line 148
    :sswitch_b
    const/16 v1, 0xb

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_0
        0x16 -> :sswitch_1
        0x1a -> :sswitch_7
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_9
        0x24 -> :sswitch_4
        0x25 -> :sswitch_8
        0x28 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    .locals 3
    .parameter "timeString"

    .prologue
    .line 167
    new-instance v0, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;-><init>(Lcom/android/mms/wrapper/HttpDateTime$1;)V

    .line 168
    .local v0, time:Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->hour:I

    .line 169
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->minute:I

    .line 170
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->second:I

    .line 171
    return-object v0
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 5
    .parameter "yearString"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 156
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 157
    .local v0, year:I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    .line 158
    add-int/lit16 v1, v0, 0x76c

    .line 162
    .end local v0           #year:I
    :goto_0
    return v1

    .line 160
    .restart local v0       #year:I
    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    goto :goto_0

    .line 162
    .end local v0           #year:I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .parameter "timeString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 72
    const/4 v4, 0x1

    .line 73
    .local v4, date:I
    const/4 v5, 0x0

    .line 74
    .local v5, month:I
    const/16 v6, 0x7b2

    .line 77
    .local v6, year:I
    sget-object v1, Lcom/android/mms/wrapper/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 78
    .local v8, rfc_matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 80
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 81
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    .line 82
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 94
    .local v9, timeOfDay:Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    :goto_0
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, time:Landroid/text/format/Time;
    iget v1, v9, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->second:I

    iget v2, v9, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->minute:I

    iget v3, v9, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;->hour:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0           #time:Landroid/text/format/Time;
    .end local v9           #timeOfDay:Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    :cond_0
    sget-object v1, Lcom/android/mms/wrapper/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 85
    .local v7, ansic_matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 87
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 88
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 89
    .restart local v9       #timeOfDay:Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/wrapper/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 91
    .end local v9           #timeOfDay:Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
