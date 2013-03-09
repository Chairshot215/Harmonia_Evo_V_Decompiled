.class public Lcom/htc/android/mail/Mailaddress;
.super Ljava/lang/Object;
.source "Mailaddress.java"


# instance fields
.field public mContactId:J

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/Mailaddress;->mContactId:J

    return-void
.end method

.method public static escapeQuoter(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v6, -0x1

    .line 145
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 162
    .end local p0
    :goto_0
    return-object p0

    .line 147
    .restart local p0
    :cond_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, reader:Ljava/io/StringReader;
    new-instance v4, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/io/StringWriter;-><init>(I)V

    .line 149
    .local v4, writer:Ljava/io/StringWriter;
    const/4 v1, -0x1

    .line 150
    .local v1, next:I
    const/4 v2, -0x1

    .line 152
    .local v2, previous:I
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 153
    if-ne v1, v7, :cond_1

    if-eq v2, v8, :cond_1

    .line 154
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(I)V

    .line 156
    :cond_1
    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    move v2, v1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getMailaddress(Ljava/lang/String;ILjava/util/regex/Matcher;Ljava/util/ArrayList;)I
    .locals 6
    .parameter "str"
    .parameter "strStart"
    .parameter "m"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/regex/Matcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, mailAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 99
    .local v4, start:I
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 100
    .local v3, end:I
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, emailAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, displayName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/Mailaddress;->stripDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v0, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 105
    .local v0, address:Lcom/htc/android/mail/Mailaddress;
    iput-object v1, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 106
    iput-object v2, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 107
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    return v3

    .line 109
    .end local v0           #address:Lcom/htc/android/mail/Mailaddress;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1       #displayName:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/htc/android/mail/Mailaddress;->stripDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v0, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 115
    .restart local v0       #address:Lcom/htc/android/mail/Mailaddress;
    iput-object v1, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 116
    iput-object v2, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 117
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0           #address:Lcom/htc/android/mail/Mailaddress;
    :cond_1
    new-instance v0, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 120
    .restart local v0       #address:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/Mailaddress;->stripDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 121
    iput-object v2, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 122
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, mailAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 23
    .local v8, reader:Ljava/io/StringReader;
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 25
    .local v10, writer:Ljava/io/StringWriter;
    const/4 v7, -0x1

    .line 26
    .local v7, previous:I
    const/4 v3, 0x0

    .line 27
    .local v3, meetFirstQuoter:Z
    const/4 v4, 0x0

    .line 28
    .local v4, meetLeftAngleParenthesis:Z
    const/4 v5, 0x0

    .line 29
    .local v5, meetRightAngleParenthesis:Z
    const/4 v2, 0x0

    .line 31
    .end local v4           #meetLeftAngleParenthesis:Z
    .end local v5           #meetRightAngleParenthesis:Z
    .local v2, meetAtSymbole:Z
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/StringReader;->read()I

    move-result v6

    .local v6, next:I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_6

    .line 32
    packed-switch v6, :pswitch_data_0

    .line 43
    :goto_1
    :pswitch_0
    const/16 v11, 0x5c

    if-eq v7, v11, :cond_0

    const/16 v11, 0x22

    if-ne v6, v11, :cond_0

    .line 44
    if-nez v3, :cond_3

    .line 45
    const/4 v3, 0x1

    .line 51
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    :cond_1
    const/16 v11, 0x2c

    if-eq v6, v11, :cond_2

    const/16 v11, 0x3b

    if-ne v6, v11, :cond_4

    .line 53
    :cond_2
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/htc/android/mail/Mailaddress;->parseInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    new-instance v10, Ljava/io/StringWriter;

    .end local v10           #writer:Ljava/io/StringWriter;
    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 55
    .restart local v10       #writer:Ljava/io/StringWriter;
    const/4 v2, 0x0

    move v5, v2

    .local v5, meetRightAngleParenthesis:I
    move v4, v2

    .line 59
    .end local v5           #meetRightAngleParenthesis:I
    :goto_3
    move v7, v6

    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v4, 0x1

    .line 35
    .restart local v4       #meetLeftAngleParenthesis:Z
    goto :goto_1

    .line 37
    .end local v4           #meetLeftAngleParenthesis:Z
    :pswitch_2
    const/4 v5, 0x1

    .line 38
    .local v5, meetRightAngleParenthesis:Z
    goto :goto_1

    .line 40
    .end local v5           #meetRightAngleParenthesis:Z
    :pswitch_3
    const/4 v2, 0x1

    goto :goto_1

    .line 47
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {v10, v6}, Ljava/io/StringWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 65
    .end local v6           #next:I
    .end local v10           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    :goto_4
    return-object v1

    .line 61
    .restart local v6       #next:I
    .restart local v10       #writer:Ljava/io/StringWriter;
    :cond_6
    :try_start_1
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, remaining:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 63
    invoke-static {v9, v1}, Lcom/htc/android/mail/Mailaddress;->parseInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static parseInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "str"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, mailAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 74
    .local v1, m:Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 75
    .local v2, strStart:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, p1}, Lcom/htc/android/mail/Mailaddress;->getMailaddress(Ljava/lang/String;ILjava/util/regex/Matcher;Ljava/util/ArrayList;)I

    move-result v2

    .line 77
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-static {p0, v2, v1, p1}, Lcom/htc/android/mail/Mailaddress;->getMailaddress(Ljava/lang/String;ILjava/util/regex/Matcher;Ljava/util/ArrayList;)I

    move-result v2

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 81
    new-instance v0, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 82
    .local v0, address:Lcom/htc/android/mail/Mailaddress;
    const-string v3, ""

    iput-object v3, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v0           #address:Lcom/htc/android/mail/Mailaddress;
    :cond_3
    invoke-static {p0}, Lcom/htc/android/mail/Mailaddress;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    new-instance v0, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 90
    .restart local v0       #address:Lcom/htc/android/mail/Mailaddress;
    const-string v3, ""

    iput-object v3, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 91
    iput-object p0, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static stripDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "displayName"

    .prologue
    const/16 v2, 0x22

    .line 129
    if-nez p0, :cond_1

    const-string p0, ""

    .line 141
    .end local p0
    .local v0, size:I
    :cond_0
    :goto_0
    return-object p0

    .line 130
    .end local v0           #size:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    .restart local v0       #size:I
    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/Mailaddress;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/16 v2, 0x20

    .line 166
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 175
    .local v0, size:I
    :cond_0
    :goto_0
    return-object p0

    .line 167
    .end local v0           #size:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .restart local v0       #size:I
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v2, :cond_2

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
